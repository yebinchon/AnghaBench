
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Nflag ;
 int getopt (int,char**,char*) ;
 scalar_t__ hflag ;
 int kdumpenv () ;
 int kgetenv (char*) ;
 int ksetenv (char*,char*) ;
 int kunsetenv (char*) ;
 scalar_t__ optind ;
 int qflag ;
 char* strchr (char*,char) ;
 scalar_t__ uflag ;
 int usage () ;
 scalar_t__ vflag ;
 int warn (char*) ;
 int warnx (char*,char*,...) ;

int
main(int argc, char **argv)
{
 char *env, *eq, *val;
 int ch, error;

 val = ((void*)0);
 env = ((void*)0);
 while ((ch = getopt(argc, argv, "hNquv")) != -1) {
  switch (ch) {
  case 'h':
   hflag++;
   break;
  case 'N':
   Nflag++;
   break;
  case 'q':
   qflag++;
   break;
  case 'u':
   uflag++;
   break;
  case 'v':
   vflag++;
   break;
  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;
 if (argc > 0) {
  env = argv[0];
  eq = strchr(env, '=');
  if (eq != ((void*)0)) {
   *eq++ = '\0';
   val = eq;
  }
  argv++;
  argc--;
 }
 if ((hflag || Nflag) && env != ((void*)0))
  usage();
 if (argc > 0 || ((uflag || vflag) && env == ((void*)0)))
  usage();
 if (env == ((void*)0)) {
  error = kdumpenv();
  if (error && !qflag)
   warn("kdumpenv");
 } else if (val == ((void*)0)) {
  if (uflag) {
   error = kunsetenv(env);
   if (error && !qflag)
    warnx("unable to unset %s", env);
  } else {
   error = kgetenv(env);
   if (error && !qflag)
    warnx("unable to get %s", env);
  }
 } else {
  error = ksetenv(env, val);
  if (error && !qflag)
   warnx("unable to set %s to %s", env, val);
 }
 return (error);
}
