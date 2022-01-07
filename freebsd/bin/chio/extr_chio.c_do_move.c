
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct changer_move {scalar_t__ cm_fromtype; scalar_t__ cm_totype; int cm_flags; void* cm_tounit; void* cm_fromunit; } ;
typedef int cmd ;


 scalar_t__ CHET_VT ;
 int CHIOMOVE ;
 int CM_INVERT ;

 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int errx (int,char*,char const*,...) ;
 int find_element (char*,scalar_t__*,void**) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 scalar_t__ ioctl (int ,int ,struct changer_move*) ;
 int memset (struct changer_move*,int ,int) ;
 void* parse_element_type (char*) ;
 void* parse_element_unit (char*) ;
 int parse_special (char*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_move(const char *cname, int argc, char **argv)
{
 struct changer_move cmd;
 int val;
 ++argv; --argc;

 if (argc < 4) {
  warnx("%s: too few arguments", cname);
  goto usage;
 } else if (argc > 5) {
  warnx("%s: too many arguments", cname);
  goto usage;
 }
 (void) memset(&cmd, 0, sizeof(cmd));


 cmd.cm_fromtype = parse_element_type(*argv);
 ++argv; --argc;


 if (CHET_VT == cmd.cm_fromtype) {
  find_element(*argv, &cmd.cm_fromtype, &cmd.cm_fromunit);
 } else {

  cmd.cm_fromunit = parse_element_unit(*argv);
 }
 ++argv; --argc;


 cmd.cm_totype = parse_element_type(*argv);
 ++argv; --argc;


 if (CHET_VT == cmd.cm_totype)
  errx(1,"%s: voltag only makes sense as an element source",
       cname);


 cmd.cm_tounit = parse_element_unit(*argv);
 ++argv; --argc;


 if (argc) {
  val = parse_special(*argv);
  switch (val) {
  case 128:
   cmd.cm_flags |= CM_INVERT;
   break;

  default:
   errx(1, "%s: inappropriate modifier `%s'",
       cname, *argv);

  }
 }


 if (ioctl(changer_fd, CHIOMOVE, &cmd))
  err(1, "%s: CHIOMOVE", changer_name);

 return (0);

 usage:
 (void) fprintf(stderr, "usage: %s %s "
     "<from ET> <from EU> <to ET> <to EU> [inv]\n", getprogname(), cname);
 return (1);
}
