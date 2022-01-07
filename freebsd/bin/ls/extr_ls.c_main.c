
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct winsize {int ws_col; } ;


 scalar_t__ COLORFLAG_ALWAYS ;
 scalar_t__ COLORFLAG_AUTO ;
 scalar_t__ COLORFLAG_NEVER ;

 int FTS_COMFOLLOW ;
 int FTS_LOGICAL ;
 int FTS_NOSTAT ;
 int FTS_PHYSICAL ;
 int FTS_SEEDOT ;
 int FTS_WHITEOUT ;
 int INT_MAX ;
 int LC_ALL ;
 int SIGINT ;
 int SIGQUIT ;
 int STDOUT_FILENO ;
 int TIOCGWINSZ ;
 int acccmp ;
 void* ansi_bgcol ;
 void* ansi_coloff ;
 void* ansi_fgcol ;
 void* attrs_off ;
 int birthcmp ;
 int blocksize ;
 scalar_t__ colorflag ;
 int colorquit ;
 scalar_t__ do_color () ;
 int do_color_always (int *) ;
 int do_color_auto (int *) ;
 int do_color_never (int *) ;
 void* enter_bold ;
 int errx (int,char*,int *) ;
 int exit (int ) ;
 int explicitansi ;
 int f_accesstime ;
 int f_birthtime ;
 int f_color ;
 int f_flags ;
 int f_humanval ;
 int f_inode ;
 int f_kblocks ;
 int f_label ;
 int f_listdir ;
 int f_listdot ;
 int f_longform ;
 int f_noautodot ;
 int f_nofollow ;
 int f_nonprint ;
 int f_nosort ;
 int f_notabs ;
 int f_numericonly ;
 int f_octal ;
 int f_octal_escape ;
 int f_recursive ;
 int f_reversesort ;
 int f_samesort ;
 int f_sectime ;
 int f_singlecol ;
 int f_size ;
 int f_sizesort ;
 int f_slash ;
 int f_sortacross ;
 int f_statustime ;
 int f_stream ;
 int f_thousands ;
 int * f_timeformat ;
 int f_timesort ;
 int f_type ;
 int f_whiteout ;
 int getbsize (int*,int*) ;
 char* getenv (char*) ;
 int getopt_long (int,char**,char*,int ,int *) ;
 scalar_t__ getuid () ;
 int ioctl (int ,int ,struct winsize*) ;
 scalar_t__ isatty (int ) ;
 int long_opts ;
 int modcmp ;
 int namecmp ;
 int * optarg ;
 scalar_t__ optind ;
 int parsecolors (char*) ;
 int printcol ;
 int printfcn ;
 int printlong ;
 int printscol ;
 int printstream ;
 int revacccmp ;
 int revbirthcmp ;
 int revmodcmp ;
 int revnamecmp ;
 int revsizecmp ;
 int revstatcmp ;
 int rval ;
 int setenv (char*,char*,int) ;
 int setlocale (int ,char*) ;
 int signal (int ,int ) ;
 int sizecmp ;
 int sortfcn ;
 int statcmp ;
 int strtonum (char*,int ,int ,char const**) ;
 int termwidth ;
 int tgetent (char*,char*) ;
 void* tgetstr (char*,char**) ;
 int traverse (int,char**,int) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 static char dot[] = ".", *dotav[] = {dot, ((void*)0)};
 struct winsize win;
 int ch, fts_options, notused;
 char *p;
 const char *errstr = ((void*)0);






 (void)setlocale(LC_ALL, "");


 if (isatty(STDOUT_FILENO)) {
  termwidth = 80;
  if ((p = getenv("COLUMNS")) != ((void*)0) && *p != '\0')
   termwidth = strtonum(p, 0, INT_MAX, &errstr);
  else if (ioctl(STDOUT_FILENO, TIOCGWINSZ, &win) != -1 &&
      win.ws_col > 0)
   termwidth = win.ws_col;
  f_nonprint = 1;
 } else {
  f_singlecol = 1;

  p = getenv("COLUMNS");
  if (p)
   termwidth = strtonum(p, 0, INT_MAX, &errstr);
 }

 if (errstr)
  termwidth = 80;

 fts_options = FTS_PHYSICAL;
 if (getenv("LS_SAMESORT"))
  f_samesort = 1;
 while ((ch = getopt_long(argc, argv,
     "+1ABCD:FGHILPRSTUWXZabcdfghiklmnopqrstuwxy,", long_opts,
     ((void*)0))) != -1) {
  switch (ch) {




  case '1':
   f_singlecol = 1;
   f_longform = 0;
   f_stream = 0;
   break;
  case 'C':
   f_sortacross = f_longform = f_singlecol = 0;
   break;
  case 'l':
   f_longform = 1;
   f_singlecol = 0;
   f_stream = 0;
   break;
  case 'x':
   f_sortacross = 1;
   f_longform = 0;
   f_singlecol = 0;
   break;

  case 'c':
   f_statustime = 1;
   f_accesstime = 0;
   f_birthtime = 0;
   break;
  case 'u':
   f_accesstime = 1;
   f_statustime = 0;
   f_birthtime = 0;
   break;
  case 'U':
   f_birthtime = 1;
   f_accesstime = 0;
   f_statustime = 0;
   break;
  case 'f':
   f_nosort = 1;

  case 'a':
   fts_options |= FTS_SEEDOT;

  case 'A':
   f_listdot = 1;
   break;

  case 'S':
   f_sizesort = 1;
   f_timesort = 0;
   break;
  case 't':
   f_timesort = 1;
   f_sizesort = 0;
   break;

  case ',':
   f_thousands = 1;
   break;
  case 'B':
   f_nonprint = 0;
   f_octal = 1;
   f_octal_escape = 0;
   break;
  case 'D':
   f_timeformat = optarg;
   break;
  case 'F':
   f_type = 1;
   f_slash = 0;
   break;
  case 'G':
   setenv("CLICOLOR", "", 1);
   break;
  case 'H':
   fts_options |= FTS_COMFOLLOW;
   f_nofollow = 0;
   break;
  case 'I':
   f_noautodot = 1;
   break;
  case 'L':
   fts_options &= ~FTS_PHYSICAL;
   fts_options |= FTS_LOGICAL;
   f_nofollow = 0;
   break;
  case 'P':
   fts_options &= ~FTS_COMFOLLOW;
   fts_options &= ~FTS_LOGICAL;
   fts_options |= FTS_PHYSICAL;
   f_nofollow = 1;
   break;
  case 'R':
   f_recursive = 1;
   break;
  case 'T':
   f_sectime = 1;
   break;
  case 'W':
   f_whiteout = 1;
   break;
  case 'Z':
   f_label = 1;
   break;
  case 'b':
   f_nonprint = 0;
   f_octal = 0;
   f_octal_escape = 1;
   break;

  case 'd':
   f_listdir = 1;
   f_recursive = 0;
   break;
  case 'g':
   break;
  case 'h':
   f_humanval = 1;
   break;
  case 'i':
   f_inode = 1;
   break;
  case 'k':
   f_humanval = 0;
   f_kblocks = 1;
   break;
  case 'm':
   f_stream = 1;
   f_singlecol = 0;
   f_longform = 0;
   break;
  case 'n':
   f_numericonly = 1;
   break;
  case 'o':
   f_flags = 1;
   break;
  case 'p':
   f_slash = 1;
   f_type = 1;
   break;
  case 'q':
   f_nonprint = 1;
   f_octal = 0;
   f_octal_escape = 0;
   break;
  case 'r':
   f_reversesort = 1;
   break;
  case 's':
   f_size = 1;
   break;
  case 'w':
   f_nonprint = 0;
   f_octal = 0;
   f_octal_escape = 0;
   break;
  case 'y':
   f_samesort = 1;
   break;
  default:
  case '?':
   usage();
  }
 }
 argc -= optind;
 argv += optind;


 if (!f_listdot && getuid() == (uid_t)0 && !f_noautodot)
  f_listdot = 1;





 if (do_color()) {
  warnx("color support not compiled in");

 }
 if (!f_inode && !f_longform && !f_size && !f_timesort &&
     !f_sizesort && !f_type



     )
  fts_options |= FTS_NOSTAT;






 if (!f_nofollow && !f_longform && !f_listdir && (!f_type || f_slash)



     )
  fts_options |= FTS_COMFOLLOW;
 if (f_inode || f_longform || f_size) {
  if (f_kblocks)
   blocksize = 2;
  else {
   (void)getbsize(&notused, &blocksize);
   blocksize /= 512;
  }
 }

 if (f_reversesort) {
  if (!f_timesort && !f_sizesort)
   sortfcn = revnamecmp;
  else if (f_sizesort)
   sortfcn = revsizecmp;
  else if (f_accesstime)
   sortfcn = revacccmp;
  else if (f_birthtime)
   sortfcn = revbirthcmp;
  else if (f_statustime)
   sortfcn = revstatcmp;
  else
   sortfcn = revmodcmp;
 } else {
  if (!f_timesort && !f_sizesort)
   sortfcn = namecmp;
  else if (f_sizesort)
   sortfcn = sizecmp;
  else if (f_accesstime)
   sortfcn = acccmp;
  else if (f_birthtime)
   sortfcn = birthcmp;
  else if (f_statustime)
   sortfcn = statcmp;
  else
   sortfcn = modcmp;
 }


 if (f_singlecol)
  printfcn = printscol;
 else if (f_longform)
  printfcn = printlong;
 else if (f_stream)
  printfcn = printstream;
 else
  printfcn = printcol;

 if (argc)
  traverse(argc, argv, fts_options);
 else
  traverse(1, dotav, fts_options);
 exit(rval);
}
