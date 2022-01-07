
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spec_name {int dummy; } ;
struct elfdump {int options; char* filename; int * archive; int flags; int snl; int * out; } ;


 void* ED_ALL ;
 int ED_CHECKSUM ;
 int ED_DYN ;
 int ED_EHDR ;
 int ED_GOT ;
 int ED_HASH ;
 int ED_INTERP ;
 int ED_NOTE ;
 int ED_PHDR ;
 int ED_REL ;
 int ED_SHDR ;
 int ED_SYMTAB ;
 int ED_SYMVER ;
 char* ELFTC_GETPROGNAME () ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int ONLY_ARSYM ;
 int PRINT_ARSYM ;
 int PRINT_FILENAME ;
 int SOLARIS_FMT ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 int STAILQ_INIT (int *) ;
 int STAILQ_REMOVE (int *,struct spec_name*,int ,int ) ;
 int add_name (struct elfdump*,int ) ;
 int elf_errmsg (int) ;
 int elf_print_object (struct elfdump*) ;
 scalar_t__ elf_version (int ) ;
 int elfdump_longopts ;
 char* elftc_version () ;
 int err (int ,char*,int ) ;
 int errx (int ,char*,int ) ;
 int exit (int ) ;
 struct spec_name* find_name (struct elfdump*,char*) ;
 int * fopen (int ,char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int memset (struct elfdump*,int ,int) ;
 int optarg ;
 scalar_t__ optind ;
 int printf (char*,char*,char*) ;
 int sn_list ;
 int spec_name ;
 int * stdout ;
 int usage () ;

int
main(int ac, char **av)
{
 struct elfdump *ed, ed_storage;
 struct spec_name *sn;
 int ch, i;

 ed = &ed_storage;
 memset(ed, 0, sizeof(*ed));
 STAILQ_INIT(&ed->snl);
 ed->out = stdout;
 while ((ch = getopt_long(ac, av, "acdeiGHhknN:prsSvVw:",
  elfdump_longopts, ((void*)0))) != -1)
  switch (ch) {
  case 'a':
   ed->options = ED_ALL;
   break;
  case 'c':
   ed->options |= ED_SHDR;
   break;
  case 'd':
   ed->options |= ED_DYN;
   break;
  case 'e':
   ed->options |= ED_EHDR;
   break;
  case 'i':
   ed->options |= ED_INTERP;
   break;
  case 'G':
   ed->options |= ED_GOT;
   break;
  case 'h':
   ed->options |= ED_HASH;
   break;
  case 'k':
   ed->options |= ED_CHECKSUM;
   break;
  case 'n':
   ed->options |= ED_NOTE;
   break;
  case 'N':
   add_name(ed, optarg);
   break;
  case 'p':
   ed->options |= ED_PHDR;
   break;
  case 'r':
   ed->options |= ED_REL;
   break;
  case 's':
   ed->options |= ED_SYMTAB;
   break;
  case 'S':
   ed->flags |= SOLARIS_FMT;
   break;
  case 'v':
   ed->options |= ED_SYMVER;
   break;
  case 'V':
   (void) printf("%s (%s)\n", ELFTC_GETPROGNAME(),
       elftc_version());
   exit(EXIT_SUCCESS);
   break;
  case 'w':
   if ((ed->out = fopen(optarg, "w")) == ((void*)0))
    err(EXIT_FAILURE, "%s", optarg);
   break;
  case '?':
  case 'H':
  default:
   usage();
  }

 ac -= optind;
 av += optind;

 if (ed->options == 0)
  ed->options = ED_ALL;
 sn = ((void*)0);
 if (ed->options & ED_SYMTAB &&
     (STAILQ_EMPTY(&ed->snl) || (sn = find_name(ed, "ARSYM")) != ((void*)0))) {
  ed->flags |= PRINT_ARSYM;
  if (sn != ((void*)0)) {
   STAILQ_REMOVE(&ed->snl, sn, spec_name, sn_list);
   if (STAILQ_EMPTY(&ed->snl))
    ed->flags |= ONLY_ARSYM;
  }
 }
 if (ac == 0)
  usage();
 if (ac > 1)
  ed->flags |= PRINT_FILENAME;
 if (elf_version(EV_CURRENT) == EV_NONE)
  errx(EXIT_FAILURE, "ELF library initialization failed: %s",
      elf_errmsg(-1));

 for (i = 0; i < ac; i++) {
  ed->filename = av[i];
  ed->archive = ((void*)0);
  elf_print_object(ed);
 }

 exit(EXIT_SUCCESS);
}
