
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_action {int remove; } ;
struct elfcopy {int flags; scalar_t__ strip; } ;


 int DISCARD_LLABEL ;
 int DISCARD_LOCAL ;


 int PRESERVE_DATE ;
 int SEC_REMOVE ;
 void* STRIP_ALL ;
 scalar_t__ STRIP_DEBUG ;
 scalar_t__ STRIP_NONDEBUG ;
 scalar_t__ STRIP_UNNEEDED ;
 int SYMOP_KEEP ;
 int SYMOP_STRIP ;
 int WILDCARD ;
 int add_to_symop_list (struct elfcopy*,char*,int *,int ) ;
 int create_file (struct elfcopy*,char*,char const*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 struct sec_action* lookup_sec_act (struct elfcopy*,char*,int) ;
 int * lookup_symop_list (struct elfcopy*,int *,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int print_version () ;
 int set_output_target (struct elfcopy*,char*) ;
 int strip_longopts ;
 int strip_usage () ;

__attribute__((used)) static void
strip_main(struct elfcopy *ecp, int argc, char **argv)
{
 struct sec_action *sac;
 const char *outfile;
 int opt;
 int i;

 outfile = ((void*)0);
 while ((opt = getopt_long(argc, argv, "hI:K:N:o:O:pR:sSdgVxXw",
     strip_longopts, ((void*)0))) != -1) {
  switch(opt) {
  case 'R':
   sac = lookup_sec_act(ecp, optarg, 1);
   sac->remove = 1;
   ecp->flags |= SEC_REMOVE;
   break;
  case 's':
   ecp->strip = STRIP_ALL;
   break;
  case 'S':
  case 'g':
  case 'd':
   ecp->strip = STRIP_DEBUG;
   break;
  case 'I':

   break;
  case 'K':
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_KEEP);
   break;
  case 'N':
   add_to_symop_list(ecp, optarg, ((void*)0), SYMOP_STRIP);
   break;
  case 'o':
   outfile = optarg;
   break;
  case 'O':
   set_output_target(ecp, optarg);
   break;
  case 'p':
   ecp->flags |= PRESERVE_DATE;
   break;
  case 'V':
   print_version();
   break;
  case 'w':
   ecp->flags |= WILDCARD;
   break;
  case 'x':
   ecp->flags |= DISCARD_LOCAL;
   break;
  case 'X':
   ecp->flags |= DISCARD_LLABEL;
   break;
  case 129:
   ecp->strip = STRIP_NONDEBUG;
   break;
  case 128:
   ecp->strip = STRIP_UNNEEDED;
   break;
  case 'h':
  default:
   strip_usage();
  }
 }

 argc -= optind;
 argv += optind;

 if (ecp->strip == 0 &&
     ((ecp->flags & DISCARD_LOCAL) == 0) &&
     ((ecp->flags & DISCARD_LLABEL) == 0) &&
     lookup_symop_list(ecp, ((void*)0), SYMOP_STRIP) == ((void*)0))
  ecp->strip = STRIP_ALL;
 if (argc == 0)
  strip_usage();




 if (outfile != ((void*)0) && argc != 1)
  strip_usage();

 for (i = 0; i < argc; i++)
  create_file(ecp, argv[i], outfile);
}
