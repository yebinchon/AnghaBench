
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Iflag ;
 int LC_ALL ;
 int SIGINFO ;
 int STDIN_FILENO ;
 int Wflag ;
 scalar_t__ check2 (char**) ;
 int checkdot (char**) ;
 int checkslash (char**) ;
 int dflag ;
 int eval ;
 int exit (int) ;
 int fflag ;
 int geteuid () ;
 int getopt (int,char**,char*) ;
 int iflag ;
 int isatty (int ) ;
 scalar_t__ optind ;
 int rflag ;
 int rm_file (char**) ;
 int rm_tree (char**) ;
 int setlocale (int ,char*) ;
 int siginfo ;
 int signal (int ,int ) ;
 int stdin_ok ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int uid ;
 int usage () ;
 int vflag ;
 int xflag ;

int
main(int argc, char *argv[])
{
 int ch;
 char *p;

 (void)setlocale(LC_ALL, "");






 if ((p = strrchr(argv[0], '/')) == ((void*)0))
  p = argv[0];
 else
  ++p;
 if (strcmp(p, "unlink") == 0) {
  if (argc == 2)
   rm_file(&argv[1]);
  else if (argc == 3 && strcmp(argv[1], "--") == 0)
   rm_file(&argv[2]);
  else
   usage();
  exit(eval);
 }

 rflag = xflag = 0;
 while ((ch = getopt(argc, argv, "dfiIPRrvWx")) != -1)
  switch(ch) {
  case 'd':
   dflag = 1;
   break;
  case 'f':
   fflag = 1;
   iflag = 0;
   break;
  case 'i':
   fflag = 0;
   iflag = 1;
   break;
  case 'I':
   Iflag = 1;
   break;
  case 'P':

   break;
  case 'R':
  case 'r':
   rflag = 1;
   break;
  case 'v':
   vflag = 1;
   break;
  case 'W':
   Wflag = 1;
   break;
  case 'x':
   xflag = 1;
   break;
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (argc < 1) {
  if (fflag)
   return (0);
  usage();
 }

 checkdot(argv);
 checkslash(argv);
 uid = geteuid();

 (void)signal(SIGINFO, siginfo);
 if (*argv) {
  stdin_ok = isatty(STDIN_FILENO);

  if (Iflag) {
   if (check2(argv) == 0)
    exit (1);
  }
  if (rflag)
   rm_tree(argv);
  else
   rm_file(argv);
 }

 exit (eval);
}
