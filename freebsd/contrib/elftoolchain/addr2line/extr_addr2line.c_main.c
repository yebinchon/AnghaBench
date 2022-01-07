
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int cap_rights_t ;
typedef int Elf ;
typedef int Dwarf_Error ;
typedef int Dwarf_Debug ;


 int CAP_FSTAT ;
 int CAP_MMAP_R ;
 int DW_DLC_READ ;
 scalar_t__ DW_DLV_OK ;
 int EXIT_FAILURE ;
 int O_RDONLY ;
 int _IOLBF ;
 int base ;
 int cap_rights_init (int *,int ,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_limit_stdio () ;
 scalar_t__ caph_rights_limit (int,int ) ;
 int demangle ;
 int dwarf_errmsg (int ) ;
 int dwarf_finish (int ,int *) ;
 scalar_t__ dwarf_get_elf (int ,int **,int *) ;
 scalar_t__ dwarf_init (int,int ,int *,int *,int *,int *) ;
 int elf_end (int *) ;
 int err (int ,char*,char const*) ;
 int errx (int ,char*,...) ;
 int exit (int ) ;
 int * fgets (char*,int,int ) ;
 int find_section_base (char const*,int *,char const*) ;
 int func ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int inlines ;
 int longopts ;
 int open (char const*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int pretty_print ;
 int print_addr ;
 scalar_t__ section_base ;
 int setvbuf (int ,int *,int ,int ) ;
 int stdin ;
 int stdout ;
 int translate (int ,int *,char*) ;
 int usage () ;
 int version () ;

int
main(int argc, char **argv)
{
 cap_rights_t rights;
 Elf *e;
 Dwarf_Debug dbg;
 Dwarf_Error de;
 const char *exe, *section;
 char line[1024];
 int fd, i, opt;

 exe = ((void*)0);
 section = ((void*)0);
 while ((opt = getopt_long(argc, argv, "ab:Ce:fij:psHV", longopts,
     ((void*)0))) != -1) {
  switch (opt) {
  case 'a':
   print_addr = 1;
   break;
  case 'b':

   break;
  case 'C':
   demangle = 1;
   break;
  case 'e':
   exe = optarg;
   break;
  case 'f':
   func = 1;
   break;
  case 'i':
   inlines = 1;
   break;
  case 'j':
   section = optarg;
   break;
  case 'p':
   pretty_print = 1;
   break;
  case 's':
   base = 1;
   break;
  case 'H':
   usage();
  case 'V':
   version();
  default:
   usage();
  }
 }

 argv += optind;
 argc -= optind;

 if (exe == ((void*)0))
  exe = "a.out";

 if ((fd = open(exe, O_RDONLY)) < 0)
  err(EXIT_FAILURE, "%s", exe);

 if (caph_rights_limit(fd, cap_rights_init(&rights, CAP_FSTAT,
     CAP_MMAP_R)) < 0)
  errx(EXIT_FAILURE, "caph_rights_limit");

 caph_cache_catpages();
 if (caph_limit_stdio() < 0)
  errx(EXIT_FAILURE, "failed to limit stdio rights");
 if (caph_enter() < 0)
  errx(EXIT_FAILURE, "failed to enter capability mode");

 if (dwarf_init(fd, DW_DLC_READ, ((void*)0), ((void*)0), &dbg, &de))
  errx(EXIT_FAILURE, "dwarf_init: %s", dwarf_errmsg(de));

 if (dwarf_get_elf(dbg, &e, &de) != DW_DLV_OK)
  errx(EXIT_FAILURE, "dwarf_get_elf: %s", dwarf_errmsg(de));

 if (section)
  find_section_base(exe, e, section);
 else
  section_base = 0;

 if (argc > 0)
  for (i = 0; i < argc; i++)
   translate(dbg, e, argv[i]);
 else {
  setvbuf(stdout, ((void*)0), _IOLBF, 0);
  while (fgets(line, sizeof(line), stdin) != ((void*)0))
   translate(dbg, e, line);
 }

 dwarf_finish(dbg, &de);

 (void) elf_end(e);

 exit(0);
}
