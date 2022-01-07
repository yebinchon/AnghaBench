
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct changer_position {int cp_flags; int cp_unit; int cp_type; } ;
typedef int cmd ;


 int CHIOPOSITION ;
 int CP_INVERT ;

 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int errx (int,char*,char const*,char*) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 scalar_t__ ioctl (int ,int ,struct changer_position*) ;
 int memset (struct changer_position*,int ,int) ;
 int parse_element_type (char*) ;
 int parse_element_unit (char*) ;
 int parse_special (char*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_position(const char *cname, int argc, char **argv)
{
 struct changer_position cmd;
 int val;
 ++argv; --argc;

 if (argc < 2) {
  warnx("%s: too few arguments", cname);
  goto usage;
 } else if (argc > 3) {
  warnx("%s: too many arguments", cname);
  goto usage;
 }
 (void) memset(&cmd, 0, sizeof(cmd));


 cmd.cp_type = parse_element_type(*argv);
 ++argv; --argc;


 cmd.cp_unit = parse_element_unit(*argv);
 ++argv; --argc;


 if (argc) {
  val = parse_special(*argv);
  switch (val) {
  case 128:
   cmd.cp_flags |= CP_INVERT;
   break;

  default:
   errx(1, "%s: inappropriate modifier `%s'",
       cname, *argv);

  }
 }


 if (ioctl(changer_fd, CHIOPOSITION, &cmd))
  err(1, "%s: CHIOPOSITION", changer_name);

 return (0);

 usage:
 (void) fprintf(stderr, "usage: %s %s <to ET> <to EU> [inv]\n",
     getprogname(), cname);
 return (1);
}
