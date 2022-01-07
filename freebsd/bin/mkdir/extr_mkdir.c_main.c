
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 scalar_t__ ENOENT ;
 scalar_t__ ENOTDIR ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int build (char*,int) ;
 int chmod (char*,int) ;
 char* dirname (char*) ;
 scalar_t__ errno ;
 int errx (int,char*,char*) ;
 int exit (int) ;
 int free (void*) ;
 int getmode (void*,int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ mkdir (char*,int) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 void* setmode (char*) ;
 int usage () ;
 int vflag ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 int ch, exitval, success, pflag;
 mode_t omode;
 void *set = ((void*)0);
 char *mode;

 omode = pflag = 0;
 mode = ((void*)0);
 while ((ch = getopt(argc, argv, "m:pv")) != -1)
  switch(ch) {
  case 'm':
   mode = optarg;
   break;
  case 'p':
   pflag = 1;
   break;
  case 'v':
   vflag = 1;
   break;
  case '?':
  default:
   usage();
  }

 argc -= optind;
 argv += optind;
 if (argv[0] == ((void*)0))
  usage();

 if (mode == ((void*)0)) {
  omode = S_IRWXU | S_IRWXG | S_IRWXO;
 } else {
  if ((set = setmode(mode)) == ((void*)0))
   errx(1, "invalid file mode: %s", mode);
  omode = getmode(set, S_IRWXU | S_IRWXG | S_IRWXO);
  free(set);
 }

 for (exitval = 0; *argv != ((void*)0); ++argv) {
  if (pflag) {
   success = build(*argv, omode);
  } else if (mkdir(*argv, omode) < 0) {
   if (errno == ENOTDIR || errno == ENOENT)
    warn("%s", dirname(*argv));
   else
    warn("%s", *argv);
   success = 0;
  } else {
   success = 1;
   if (vflag)
    (void)printf("%s\n", *argv);
  }
  if (!success)
   exitval = 1;
  if (success == 1 && mode != ((void*)0) && chmod(*argv, omode) == -1) {
   warn("%s", *argv);
   exitval = 1;
  }
 }
 exit(exitval);
}
