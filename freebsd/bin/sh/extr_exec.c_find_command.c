
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int index; } ;
struct tblentry {scalar_t__ cmdtype; int special; TYPE_1__ param; } ;
struct stat {int st_mode; scalar_t__ st_uid; scalar_t__ st_gid; } ;
struct cmdentry {scalar_t__ cmdtype; int special; TYPE_1__ u; } ;


 scalar_t__ CMDBUILTIN ;
 scalar_t__ CMDFUNCTION ;
 void* CMDNORMAL ;
 scalar_t__ CMDUNKNOWN ;
 int DO_ERR ;
 int DO_NOFUNC ;
 int EACCES ;
 int ENOENT ;
 int ENOTDIR ;
 int INTOFF ;
 int INTON ;
 int S_ISREG (int) ;
 int TRACE (char*) ;
 struct tblentry* cmdlookup (char const*,int) ;
 int cmdtable_cd ;
 int errno ;
 int error (char*,char const*,char*) ;
 int find_builtin (char const*,int*) ;
 scalar_t__ getegid () ;
 scalar_t__ geteuid () ;
 int out2 ;
 int outfmt (int ,char*,char const*,...) ;
 char* padvance (char const**,char const**,char const*) ;
 int readcmdfile (char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int * strchr (char const*,char) ;
 int strerror (int) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int stunalloc (char*) ;

void
find_command(const char *name, struct cmdentry *entry, int act,
    const char *path)
{
 struct tblentry *cmdp, loc_cmd;
 int idx;
 const char *opt;
 char *fullname;
 struct stat statb;
 int e;
 int i;
 int spec;
 int cd;


 if (strchr(name, '/') != ((void*)0)) {
  entry->cmdtype = CMDNORMAL;
  entry->u.index = 0;
  entry->special = 0;
  return;
 }

 cd = 0;


 if ((cmdp = cmdlookup(name, 0)) != ((void*)0)) {
  if (cmdp->cmdtype == CMDFUNCTION && act & DO_NOFUNC)
   cmdp = ((void*)0);
  else
   goto success;
 }


 if ((i = find_builtin(name, &spec)) >= 0) {
  INTOFF;
  cmdp = cmdlookup(name, 1);
  if (cmdp->cmdtype == CMDFUNCTION)
   cmdp = &loc_cmd;
  cmdp->cmdtype = CMDBUILTIN;
  cmdp->param.index = i;
  cmdp->special = spec;
  INTON;
  goto success;
 }



 e = ENOENT;
 idx = -1;
 for (;(fullname = padvance(&path, &opt, name)) != ((void*)0);
     stunalloc(fullname)) {
  idx++;
  if (opt) {
   if (strncmp(opt, "func", 4) == 0) {

   } else {
    continue;
   }
  }
  if (fullname[0] != '/')
   cd = 1;
  if (stat(fullname, &statb) < 0) {
   if (errno != ENOENT && errno != ENOTDIR)
    e = errno;
   continue;
  }
  e = EACCES;
  if (!S_ISREG(statb.st_mode))
   continue;
  if (opt) {
   readcmdfile(fullname);
   if ((cmdp = cmdlookup(name, 0)) == ((void*)0) || cmdp->cmdtype != CMDFUNCTION)
    error("%s not defined in %s", name, fullname);
   stunalloc(fullname);
   goto success;
  }
  TRACE(("searchexec \"%s\" returns \"%s\"\n", name, fullname));
  INTOFF;
  stunalloc(fullname);
  cmdp = cmdlookup(name, 1);
  if (cmdp->cmdtype == CMDFUNCTION)
   cmdp = &loc_cmd;
  cmdp->cmdtype = CMDNORMAL;
  cmdp->param.index = idx;
  cmdp->special = 0;
  INTON;
  goto success;
 }

 if (act & DO_ERR) {
  if (e == ENOENT || e == ENOTDIR)
   outfmt(out2, "%s: not found\n", name);
  else
   outfmt(out2, "%s: %s\n", name, strerror(e));
 }
 entry->cmdtype = CMDUNKNOWN;
 entry->u.index = 0;
 entry->special = 0;
 return;

success:
 if (cd)
  cmdtable_cd = 1;
 entry->cmdtype = cmdp->cmdtype;
 entry->u = cmdp->param;
 entry->special = cmdp->special;
}
