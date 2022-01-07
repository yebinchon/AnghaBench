
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int pflag ;
 int printf (char*,char*) ;
 int rm_path (char*) ;
 scalar_t__ rmdir (char*) ;
 int usage () ;
 int vflag ;
 int warn (char*,char*) ;

int
main(int argc, char *argv[])
{
 int ch, errors;

 while ((ch = getopt(argc, argv, "pv")) != -1)
  switch(ch) {
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

 if (argc == 0)
  usage();

 for (errors = 0; *argv; argv++) {
  if (rmdir(*argv) < 0) {
   warn("%s", *argv);
   errors = 1;
  } else {
   if (vflag)
    printf("%s\n", *argv);
   if (pflag)
    errors |= rm_path(*argv);
  }
 }

 exit(errors);
}
