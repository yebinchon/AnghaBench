
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int exit (int) ;
 int getopt (int,char**,char*) ;
 scalar_t__ optind ;
 int printf (char*,char*) ;
 char* realpath (char const*,char*) ;
 int usage () ;
 int warn (char*,char const*) ;

int
main(int argc, char *argv[])
{
 char buf[PATH_MAX];
 char *p;
 const char *path;
 int ch, qflag, rval;

 qflag = 0;
 while ((ch = getopt(argc, argv, "q")) != -1) {
  switch (ch) {
  case 'q':
   qflag = 1;
   break;
  case '?':
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 path = *argv != ((void*)0) ? *argv++ : ".";
 rval = 0;
 do {
  if ((p = realpath(path, buf)) == ((void*)0)) {
   if (!qflag)
    warn("%s", path);
   rval = 1;
  } else
   (void)printf("%s\n", p);
 } while ((path = *argv++) != ((void*)0));
 exit(rval);
}
