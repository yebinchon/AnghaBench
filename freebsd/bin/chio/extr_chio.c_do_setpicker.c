
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHIOSPICKER ;
 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int parse_element_unit (char*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_setpicker(const char *cname, int argc, char **argv)
{
 int picker;

 ++argv; --argc;

 if (argc < 1) {
  warnx("%s: too few arguments", cname);
  goto usage;
 } else if (argc > 1) {
  warnx("%s: too many arguments", cname);
  goto usage;
 }

 picker = parse_element_unit(*argv);


 if (ioctl(changer_fd, CHIOSPICKER, &picker))
  err(1, "%s: CHIOSPICKER", changer_name);

 return (0);

 usage:
 (void) fprintf(stderr, "usage: %s %s <picker>\n", getprogname(), cname);
 return (1);
}
