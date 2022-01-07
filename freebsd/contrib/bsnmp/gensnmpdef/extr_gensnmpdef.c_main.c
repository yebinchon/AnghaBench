
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ u_int ;
typedef int mods ;
struct TYPE_8__ {scalar_t__ oidlen; } ;
typedef TYPE_1__ SmiNode ;
typedef int SmiModule ;


 int SMI_FLAG_ERRORS ;
 int SMI_NODEKIND_ANY ;
 scalar_t__ close_node (scalar_t__,scalar_t__) ;
 scalar_t__ cut ;
 scalar_t__ do_typedef ;
 int err (int,char*,...) ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int getopt (int,char**,char*) ;
 int * last_node ;
 int ** malloc (int) ;
 scalar_t__ open_node (TYPE_1__*,scalar_t__,TYPE_1__**) ;
 char* optarg ;
 scalar_t__ optind ;
 int print_it (TYPE_1__*,scalar_t__) ;
 int print_typdefs (TYPE_1__*) ;
 TYPE_1__* smiGetFirstNode (int *,int ) ;
 int smiGetFlags () ;
 int * smiGetModule (char*) ;
 TYPE_1__* smiGetNextNode (int *,int ) ;
 int smiInit (int *) ;
 char* smiLoadModule (char*) ;
 int smiSetFlags (int) ;
 int stderr ;
 long strtol (char*,char**,int) ;
 int tdefs_cleanup () ;
 char* usgtxt ;

int
main(int argc, char *argv[])
{
 int opt;
 int flags;
 SmiModule **mods;
 char *name;
 SmiNode *n, *last;
 u_int level;
 long u;
 char *end;

 smiInit(((void*)0));

 while ((opt = getopt(argc, argv, "c:Eeh")) != -1)
  switch (opt) {

    case 'c':
   errno = 0;
   u = strtol(optarg, &end, 10);
   if (errno != 0)
    err(1, "argument to -c");
   if (*end != '\0')
    err(1, "%s: not a number", optarg);
   if (u < 0 || u > 5)
    err(1, "%s: out of range", optarg);
   cut = (u_int)u;
   break;

    case 'E':
   do_typedef = 'E';
   break;

    case 'e':
   do_typedef = 'e';
   break;

    case 'h':
   fprintf(stderr, usgtxt);
   exit(0);
  }

 argc -= optind;
 argv += optind;

 flags = smiGetFlags();
 flags |= SMI_FLAG_ERRORS;
 smiSetFlags(flags);

 mods = malloc(sizeof(mods[0]) * argc);
 if (mods == ((void*)0))
  err(1, ((void*)0));

 for (opt = 0; opt < argc; opt++) {
  if ((name = smiLoadModule(argv[opt])) == ((void*)0))
   err(1, "%s: cannot load", argv[opt]);
  mods[opt] = smiGetModule(name);
 }
 level = 0;
 last = ((void*)0);
 for (opt = 0; opt < argc; opt++) {
  if (mods[opt] == ((void*)0))
   continue;
  n = smiGetFirstNode(mods[opt], SMI_NODEKIND_ANY);
  if (n == ((void*)0))
   continue;
  for (;;) {
   if (do_typedef == 0) {
    level = open_node(n, level, &last);
    print_it(n, level);
    last = n;
   } else
    print_typdefs(n);

   if (last_node == ((void*)0) ||
       (n = smiGetNextNode(last_node, SMI_NODEKIND_ANY))
       == ((void*)0))
    break;
  }
 }
 if (last != ((void*)0) && do_typedef == 0)
  level = close_node(last->oidlen - 1, level - 1);
 else if (do_typedef != 0)
  tdefs_cleanup();

 return (0);
}
