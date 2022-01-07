
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHIOIELEM ;
 int atol (char*) ;
 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_ielem(const char *cname, int argc, char **argv)
{
 int timeout = 0;

 if (argc == 2) {
  timeout = atol(argv[1]);
 } else if (argc > 1) {
  warnx("%s: too many arguments", cname);
  goto usage;
 }

 if (ioctl(changer_fd, CHIOIELEM, &timeout))
  err(1, "%s: CHIOIELEM", changer_name);

 return (0);

 usage:
 (void) fprintf(stderr, "usage: %s %s [<timeout>]\n",
         getprogname(), cname);
 return (1);
}
