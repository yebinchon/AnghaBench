
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct tblentry {int cmdtype; int special; TYPE_1__ param; } ;
struct cmdentry {int cmdtype; int special; TYPE_1__ u; } ;
struct alias {int val; } ;





 int TYPECMD_SMALLV ;
 int TYPECMD_TYPE ;
 int X_OK ;
 int clearcmdentry () ;
 struct tblentry* cmdlookup (char*,int ) ;
 int eaccess (char*,int ) ;
 scalar_t__ equal (char const* const,char*) ;
 int errno ;
 int find_command (char*,struct cmdentry*,int ,char const*) ;
 struct alias* lookupalias (char*,int) ;
 int out1 ;
 int out1fmt (char*,char*,...) ;
 int out1qstr (int ) ;
 int out2 ;
 int outcslow (char,int ) ;
 int outfmt (int ,char*,char*,...) ;
 char* padvance (char const**,char const**,char*) ;
 char** parsekwd ;
 char const* pathval () ;
 int * strchr (char*,char) ;
 int strerror (int ) ;
 int stunalloc (char*) ;

int
typecmd_impl(int argc, char **argv, int cmd, const char *path)
{
 struct cmdentry entry;
 struct tblentry *cmdp;
 const char *const *pp;
 struct alias *ap;
 int i;
 int error1 = 0;

 if (path != pathval())
  clearcmdentry();

 for (i = 1; i < argc; i++) {

  for (pp = parsekwd; *pp; pp++)
   if (**pp == *argv[i] && equal(*pp, argv[i]))
    break;

  if (*pp) {
   if (cmd == TYPECMD_SMALLV)
    out1fmt("%s\n", argv[i]);
   else
    out1fmt("%s is a shell keyword\n", argv[i]);
   continue;
  }


  if ((ap = lookupalias(argv[i], 1)) != ((void*)0)) {
   if (cmd == TYPECMD_SMALLV) {
    out1fmt("alias %s=", argv[i]);
    out1qstr(ap->val);
    outcslow('\n', out1);
   } else
    out1fmt("%s is an alias for %s\n", argv[i],
        ap->val);
   continue;
  }


  if ((cmdp = cmdlookup(argv[i], 0)) != ((void*)0)) {
   entry.cmdtype = cmdp->cmdtype;
   entry.u = cmdp->param;
   entry.special = cmdp->special;
  }
  else {

   find_command(argv[i], &entry, 0, path);
  }

  switch (entry.cmdtype) {
  case 128: {
   if (strchr(argv[i], '/') == ((void*)0)) {
    const char *path2 = path;
    const char *opt2;
    char *name;
    int j = entry.u.index;
    do {
     name = padvance(&path2, &opt2, argv[i]);
     stunalloc(name);
    } while (--j >= 0);
    if (cmd == TYPECMD_SMALLV)
     out1fmt("%s\n", name);
    else
     out1fmt("%s is%s %s\n", argv[i],
         (cmdp && cmd == TYPECMD_TYPE) ?
      " a tracked alias for" : "",
         name);
   } else {
    if (eaccess(argv[i], X_OK) == 0) {
     if (cmd == TYPECMD_SMALLV)
      out1fmt("%s\n", argv[i]);
     else
      out1fmt("%s is %s\n", argv[i],
          argv[i]);
    } else {
     if (cmd != TYPECMD_SMALLV)
      outfmt(out2, "%s: %s\n",
          argv[i], strerror(errno));
     error1 |= 127;
    }
   }
   break;
  }
  case 129:
   if (cmd == TYPECMD_SMALLV)
    out1fmt("%s\n", argv[i]);
   else
    out1fmt("%s is a shell function\n", argv[i]);
   break;

  case 130:
   if (cmd == TYPECMD_SMALLV)
    out1fmt("%s\n", argv[i]);
   else if (entry.special)
    out1fmt("%s is a special shell builtin\n",
        argv[i]);
   else
    out1fmt("%s is a shell builtin\n", argv[i]);
   break;

  default:
   if (cmd != TYPECMD_SMALLV)
    outfmt(out2, "%s: not found\n", argv[i]);
   error1 |= 127;
   break;
  }
 }

 if (path != pathval())
  clearcmdentry();

 return error1;
}
