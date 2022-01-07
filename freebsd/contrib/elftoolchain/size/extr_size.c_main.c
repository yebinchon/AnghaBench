
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileargs_t ;
typedef int cap_rights_t ;


 int CAP_FSTAT ;
 int CAP_MMAP_R ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int EXIT_FAILURE ;
 int FA_OPEN ;


 int O_RDONLY ;
 int RADIX_DECIMAL ;
 int RADIX_HEX ;
 int RADIX_OCTAL ;
 int RETURN_OK ;
 scalar_t__ STYLE_BERKELEY ;
 scalar_t__ STYLE_SYSV ;
 int berkeley_totals () ;
 int cap_rights_init (int *,int ,int ) ;
 int caph_cache_catpages () ;
 scalar_t__ caph_enter_casper () ;
 scalar_t__ caph_limit_stdio () ;
 int elf_errmsg (int) ;
 scalar_t__ elf_version (int ) ;
 int err (int ,char*) ;
 int errx (int ,char*,int ) ;
 int fileargs_free (int *) ;
 int * fileargs_init (int,char**,int ,int ,int *,int ) ;
 int fileargs_open (int *,char const*) ;
 int free (char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int handle_elf (int,char const*) ;
 char* optarg ;
 scalar_t__ optind ;
 int radix ;
 int show_totals ;
 int show_version () ;
 int size_longopts ;
 int size_option ;
 char* strdup (char*) ;
 int strtol (char*,int *,int) ;
 scalar_t__ style ;
 int tbl_flush () ;
 int usage () ;
 int warn (char*,char const*) ;
 int warnx (char*,char const*) ;

int
main(int argc, char **argv)
{
 cap_rights_t rights;
 fileargs_t *fa;
 int ch, fd, r, rc;
 const char *fn;
 char *defaultfn;

 rc = RETURN_OK;

 if (elf_version(EV_CURRENT) == EV_NONE)
  errx(EXIT_FAILURE, "ELF library initialization failed: %s",
      elf_errmsg(-1));

 while ((ch = getopt_long(argc, argv, "ABVdhotx", size_longopts,
     ((void*)0))) != -1)
  switch((char)ch) {
  case 'A':
   style = STYLE_SYSV;
   break;
  case 'B':
   style = STYLE_BERKELEY;
   break;
  case 'V':
   show_version();
   break;
  case 'd':
   radix = RADIX_DECIMAL;
   break;
  case 'o':
   radix = RADIX_OCTAL;
   break;
  case 't':
   show_totals = 1;
   break;
  case 'x':
   radix = RADIX_HEX;
   break;
  case 0:
   switch (size_option) {
   case 129:
    if (*optarg == 's' || *optarg == 'S')
     style = STYLE_SYSV;
    else if (*optarg == 'b' || *optarg == 'B')
     style = STYLE_BERKELEY;
    else {
     warnx("unrecognized format \"%s\".",
           optarg);
     usage();
    }
    break;
   case 128:
    r = strtol(optarg, ((void*)0), 10);
    if (r == 8)
     radix = RADIX_OCTAL;
    else if (r == 10)
     radix = RADIX_DECIMAL;
    else if (r == 16)
     radix = RADIX_HEX;
    else {
     warnx("unsupported radix \"%s\".",
           optarg);
     usage();
    }
    break;
   default:
    err(EXIT_FAILURE, "Error in option handling.");

   }
   break;
  case 'h':
  case '?':
  default:
   usage();

  }
 argc -= optind;
 argv += optind;

 if (argc == 0) {
  defaultfn = strdup("a.out");
  if (defaultfn == ((void*)0))
   err(EXIT_FAILURE, "strdup");
  argc = 1;
  argv = &defaultfn;
 } else {
  defaultfn = ((void*)0);
 }

 cap_rights_init(&rights, CAP_FSTAT, CAP_MMAP_R);
 fa = fileargs_init(argc, argv, O_RDONLY, 0, &rights, FA_OPEN);
 if (fa == ((void*)0))
  err(EXIT_FAILURE, "failed to initialize fileargs");

 caph_cache_catpages();
 if (caph_limit_stdio() < 0)
  err(EXIT_FAILURE, "failed to limit stdio rights");
 if (caph_enter_casper() < 0)
  err(EXIT_FAILURE, "failed to enter capability mode");

 for (; argc > 0; argc--, argv++) {
  fn = argv[0];
  fd = fileargs_open(fa, fn);
  if (fd < 0) {
   warn("%s: Failed to open", fn);
   continue;
  }
  rc = handle_elf(fd, fn);
  if (rc != RETURN_OK)
   warnx("%s: File format not recognized", fn);
 }
 if (style == STYLE_BERKELEY) {
  if (show_totals)
   berkeley_totals();
  tbl_flush();
 }
 fileargs_free(fa);
 free(defaultfn);
        return (rc);
}
