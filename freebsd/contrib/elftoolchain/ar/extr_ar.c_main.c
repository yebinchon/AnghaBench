
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {char* progname; int options; char* filename; char mode; int argc; char** argv; int * posarg; int output; } ;


 int AR_A ;
 int AR_B ;
 int AR_BSD ;
 int AR_C ;
 int AR_CC ;
 int AR_D ;
 int AR_J ;
 int AR_O ;
 int AR_S ;
 int AR_SS ;
 int AR_TR ;
 int AR_U ;
 int AR_V ;
 int AR_Z ;
 char* ELFTC_GETPROGNAME () ;
 int EV_CURRENT ;
 scalar_t__ EV_NONE ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;

 int ar_mode_script (struct bsdar*) ;
 int ar_read_archive (struct bsdar*,char) ;
 int ar_write_archive (struct bsdar*,char) ;
 int * basename (char*) ;
 int bsdar_errc (struct bsdar*,int ,char*,...) ;
 int bsdar_usage () ;
 int bsdar_version () ;
 int bsdar_warnc (struct bsdar*,int ,char*,char*) ;
 int elf_errmsg (int) ;
 scalar_t__ elf_version (int ) ;
 int errno ;
 int exit (int) ;
 int free (char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 int longopts ;
 char* malloc (size_t) ;
 int memset (struct bsdar*,int ,int) ;
 int only_mode (struct bsdar*,char*,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int ranlib_usage () ;
 int set_mode (struct bsdar*,int) ;
 int snprintf (char*,size_t,char*,char*) ;
 int stdout ;
 int strcasecmp (int ,char*) ;
 scalar_t__ strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

int
main(int argc, char **argv)
{
 struct bsdar *bsdar, bsdar_storage;
 char *arcmd, *argv1_saved;
 size_t len;
 int exitcode, i, opt;

 bsdar = &bsdar_storage;
 memset(bsdar, 0, sizeof(*bsdar));

 exitcode = EXIT_SUCCESS;
 arcmd = argv1_saved = ((void*)0);
 bsdar->output = stdout;

 if ((bsdar->progname = ELFTC_GETPROGNAME()) == ((void*)0))
  bsdar->progname = "ar";

 if (elf_version(EV_CURRENT) == EV_NONE)
  bsdar_errc(bsdar, 0, "ELF library initialization failed: %s",
      elf_errmsg(-1));






 len = strlen(bsdar->progname);
 if (len >= strlen("ranlib") &&
     strcmp(bsdar->progname + len - strlen("ranlib"), "ranlib") == 0) {
  while ((opt = getopt_long(argc, argv, "tDUV", longopts,
      ((void*)0))) != -1) {
   switch(opt) {
   case 't':

    break;
   case 'D':
    bsdar->options |= AR_D;
    break;
   case 'U':
    bsdar->options &= ~AR_D;
    break;
   case 'V':
    bsdar_version();
    break;
   case 128:
    ranlib_usage();
   default:
    ranlib_usage();
   }
  }
  argv += optind;
  argc -= optind;

  if (*argv == ((void*)0))
   ranlib_usage();

  bsdar->options |= AR_S;
  while ((bsdar->filename = *argv++) != ((void*)0))
   exitcode |= ar_write_archive(bsdar, 's');

  exit(exitcode);
 } else {
  if (argc < 2)
   bsdar_usage();




  if (*argv[1] != '-') {
   argv1_saved = argv[1];
   len = strlen(argv[1]) + 2;
   if ((arcmd = malloc(len)) == ((void*)0))
    bsdar_errc(bsdar, errno, "malloc failed");
   (void) snprintf(arcmd, len, "-%s", argv[1]);
   argv[1] = arcmd;
  }
 }

 while ((opt = getopt_long(argc, argv, "abCcdDfF:ijlMmopqrSsTtUuVvxz",
     longopts, ((void*)0))) != -1) {
  switch(opt) {
  case 'a':
   bsdar->options |= AR_A;
   break;
  case 'b':
  case 'i':
   bsdar->options |= AR_B;
   break;
  case 'C':
   bsdar->options |= AR_CC;
   break;
  case 'c':
   bsdar->options |= AR_C;
   break;
  case 'd':
   set_mode(bsdar, opt);
   break;
  case 'D':
   bsdar->options |= AR_D;
   break;
  case 'F':
   if (!strcasecmp(optarg, "svr4") ||
       !strcasecmp(optarg, "gnu"))
    bsdar->options &= ~AR_BSD;
   else if (!strcasecmp(optarg, "bsd"))
    bsdar->options |= AR_BSD;
   else
    bsdar_usage();
   break;
  case 'f':
  case 'T':
   bsdar->options |= AR_TR;
   break;
  case 'j':

   break;
  case 'l':

   break;
  case 'M':
   set_mode(bsdar, opt);
   break;
  case 'm':
   set_mode(bsdar, opt);
   break;
  case 'o':
   bsdar->options |= AR_O;
   break;
  case 'p':
   set_mode(bsdar, opt);
   break;
  case 'q':
   set_mode(bsdar, opt);
   break;
  case 'r':
   set_mode(bsdar, opt);
   break;
  case 'S':
   bsdar->options |= AR_SS;
   break;
  case 's':
   bsdar->options |= AR_S;
   break;
  case 't':
   set_mode(bsdar, opt);
   break;
  case 'U':
   bsdar->options &= ~AR_D;
   break;
  case 'u':
   bsdar->options |= AR_U;
   break;
  case 'V':
   bsdar_version();
   break;
  case 'v':
   bsdar->options |= AR_V;
   break;
  case 'x':
   set_mode(bsdar, opt);
   break;
  case 'z':

   break;
  case 128:
   bsdar_usage();
  default:
   bsdar_usage();
  }
 }


 if (arcmd != ((void*)0)) {
  argv[1] = argv1_saved;
  free(arcmd);
  arcmd = argv1_saved = ((void*)0);
 }

 argv += optind;
 argc -= optind;

 if (*argv == ((void*)0) && bsdar->mode != 'M')
  bsdar_usage();

 if (bsdar->options & AR_A && bsdar->options & AR_B)
  bsdar_errc(bsdar, 0,
      "only one of -a and -[bi] options allowed");

 if (bsdar->options & AR_J && bsdar->options & AR_Z)
  bsdar_errc(bsdar, 0,
      "only one of -j and -z options allowed");

 if (bsdar->options & AR_S && bsdar->options & AR_SS)
  bsdar_errc(bsdar, 0,
      "only one of -s and -S options allowed");

 if (bsdar->options & (AR_A | AR_B)) {
  if (*argv == ((void*)0))
   bsdar_errc(bsdar, 0,
       "no position operand specified");
  if ((bsdar->posarg = basename(*argv)) == ((void*)0))
   bsdar_errc(bsdar, errno,
       "basename failed");
  argc--;
  argv++;
 }

 if (bsdar->options & AR_A)
  only_mode(bsdar, "-a", "mqr");
 if (bsdar->options & AR_B)
  only_mode(bsdar, "-b", "mqr");
 if (bsdar->options & AR_C)
  only_mode(bsdar, "-c", "qr");
 if (bsdar->options & AR_CC)
  only_mode(bsdar, "-C", "x");
 if (bsdar->options & AR_D)
  only_mode(bsdar, "-D", "qr");
 if (bsdar->options & AR_O)
  only_mode(bsdar, "-o", "x");
 if (bsdar->options & AR_SS)
  only_mode(bsdar, "-S", "mqr");
 if (bsdar->options & AR_U)
  only_mode(bsdar, "-u", "qrx");

 if (bsdar->mode == 'M') {
  ar_mode_script(bsdar);
  exit(EXIT_SUCCESS);
 }

 if ((bsdar->filename = *argv) == ((void*)0))
  bsdar_usage();

 bsdar->argc = --argc;
 bsdar->argv = ++argv;

 if ((!bsdar->mode || strchr("ptx", bsdar->mode)) &&
     bsdar->options & AR_S) {
  exitcode = ar_write_archive(bsdar, 's');
  if (!bsdar->mode)
   exit(exitcode);
 }

 switch(bsdar->mode) {
 case 'd': case 'm': case 'q': case 'r':
  exitcode = ar_write_archive(bsdar, bsdar->mode);
  break;

 case 'p': case 't': case 'x':
  exitcode = ar_read_archive(bsdar, bsdar->mode);
  break;
 default:
  bsdar_usage();

 }

 for (i = 0; i < bsdar->argc; i++) {
  if (bsdar->argv[i] != ((void*)0)) {
   bsdar_warnc(bsdar, 0, "%s: not found in archive",
       bsdar->argv[i]);
   exitcode = EXIT_FAILURE;
  }
 }

 exit(exitcode);
}
