
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int ENOTDIR ;
 int Fflag ;
 int Pflag ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 int err (int,char*,char*) ;
 int errno ;
 int exit (int) ;
 int fflag ;
 int getopt (int,char**,char*) ;
 int hflag ;
 scalar_t__ iflag ;
 char linkch ;
 int linkit (char*,char*,int) ;
 scalar_t__ lstat (char*,struct stat*) ;
 scalar_t__ optind ;
 scalar_t__ sflag ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strrchr (char*,char) ;
 int usage () ;
 int vflag ;
 int wflag ;

int
main(int argc, char *argv[])
{
 struct stat sb;
 char *p, *targetdir;
 int ch, exitval;






 if ((p = strrchr(argv[0], '/')) == ((void*)0))
  p = argv[0];
 else
  ++p;
 if (strcmp(p, "link") == 0) {
  while (getopt(argc, argv, "") != -1)
   usage();
  argc -= optind;
  argv += optind;
  if (argc != 2)
   usage();
  exit(linkit(argv[0], argv[1], 0));
 }

 while ((ch = getopt(argc, argv, "FLPfhinsvw")) != -1)
  switch (ch) {
  case 'F':
   Fflag = 1;
   break;
  case 'L':
   Pflag = 0;
   break;
  case 'P':
   Pflag = 1;
   break;
  case 'f':
   fflag = 1;
   iflag = 0;
   wflag = 0;
   break;
  case 'h':
  case 'n':
   hflag = 1;
   break;
  case 'i':
   iflag = 1;
   fflag = 0;
   break;
  case 's':
   sflag = 1;
   break;
  case 'v':
   vflag = 1;
   break;
  case 'w':
   wflag = 1;
   break;
  case '?':
  default:
   usage();
  }

 argv += optind;
 argc -= optind;

 linkch = sflag ? '-' : '=';
 if (sflag == 0)
  Fflag = 0;
 if (Fflag == 1 && iflag == 0) {
  fflag = 1;
  wflag = 0;
 }

 switch(argc) {
 case 0:
  usage();

 case 1:
  exit(linkit(argv[0], ".", 1));
 case 2:
  exit(linkit(argv[0], argv[1], 0));
 default:
  ;
 }

 targetdir = argv[argc - 1];
 if (hflag && lstat(targetdir, &sb) == 0 && S_ISLNK(sb.st_mode)) {




  errno = ENOTDIR;
  err(1, "%s", targetdir);
 }
 if (stat(targetdir, &sb))
  err(1, "%s", targetdir);
 if (!S_ISDIR(sb.st_mode))
  usage();
 for (exitval = 0; *argv != targetdir; ++argv)
  exitval |= linkit(*argv, targetdir, 1);
 exit(exitval);
}
