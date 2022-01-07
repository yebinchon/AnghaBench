
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHIOGPICKER ;
 int changer_fd ;
 char* changer_name ;
 int err (int,char*,char*) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 scalar_t__ ioctl (int ,int ,int*) ;
 int printf (char*,char*,int) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_getpicker(const char *cname, int argc, char **argv)
{
 int picker;



 ++argv; --argc;

 if (argc) {
  warnx("%s: no arguments expected", cname);
  goto usage;
 }


 if (ioctl(changer_fd, CHIOGPICKER, &picker))
  err(1, "%s: CHIOGPICKER", changer_name);

 (void) printf("%s: current picker: %d\n", changer_name, picker);

 return (0);

 usage:
 (void) fprintf(stderr, "usage: %s %s\n", getprogname(), cname);
 return (1);
}
