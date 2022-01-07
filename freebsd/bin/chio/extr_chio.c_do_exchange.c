
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct changer_exchange {scalar_t__ ce_srctype; scalar_t__ ce_fdsttype; scalar_t__ ce_sdsttype; int ce_flags; void* ce_sdstunit; void* ce_srcunit; void* ce_fdstunit; } ;
typedef int cmd ;


 int CE_INVERT1 ;
 int CE_INVERT2 ;
 scalar_t__ CHET_VT ;
 int CHIOEXCHANGE ;


 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int errx (int,char*,char const*,char*) ;
 int find_element (char*,scalar_t__*,void**) ;
 int fprintf (int ,char*,char*,char const*) ;
 char* getprogname () ;
 scalar_t__ ioctl (int ,int ,struct changer_exchange*) ;
 scalar_t__ is_special (char*) ;
 int memset (struct changer_exchange*,int ,int) ;
 void* parse_element_type (char*) ;
 void* parse_element_unit (char*) ;
 int parse_special (char*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_exchange(const char *cname, int argc, char **argv)
{
 struct changer_exchange cmd;
 int val;
 ++argv; --argc;

 if (argc < 4) {
  warnx("%s: too few arguments", cname);
  goto usage;
 } else if (argc > 8) {
  warnx("%s: too many arguments", cname);
  goto usage;
 }
 (void) memset(&cmd, 0, sizeof(cmd));


 cmd.ce_srctype = parse_element_type(*argv);
 ++argv; --argc;


 if (CHET_VT == cmd.ce_srctype) {
  find_element(*argv, &cmd.ce_srctype, &cmd.ce_srcunit);
 } else {

  cmd.ce_srcunit = parse_element_unit(*argv);
 }
 ++argv; --argc;


 cmd.ce_fdsttype = parse_element_type(*argv);
 ++argv; --argc;


 if (CHET_VT == cmd.ce_fdsttype) {
  find_element(*argv, &cmd.ce_fdsttype, &cmd.ce_fdstunit);
 } else {

  cmd.ce_fdstunit = parse_element_unit(*argv);
 }
 ++argv; --argc;






 if ((argc == 0) || is_special(*argv)) {
  cmd.ce_sdsttype = cmd.ce_srctype;
  cmd.ce_sdstunit = cmd.ce_srcunit;
  goto do_special;
 }


 cmd.ce_sdsttype = parse_element_type(*argv);
 ++argv; --argc;

 if (CHET_VT == cmd.ce_sdsttype)
  errx(1,"%s %s: voltag only makes sense as an element source",
       cname, *argv);


 cmd.ce_sdstunit = parse_element_unit(*argv);
 ++argv; --argc;

 do_special:

 while (argc) {
  val = parse_special(*argv);
  ++argv; --argc;
  switch (val) {
  case 129:
   cmd.ce_flags |= CE_INVERT1;
   break;

  case 128:
   cmd.ce_flags |= CE_INVERT2;
   break;

  default:
   errx(1, "%s: inappropriate modifier `%s'",
       cname, *argv);

  }
 }


 if (ioctl(changer_fd, CHIOEXCHANGE, &cmd))
  err(1, "%s: CHIOEXCHANGE", changer_name);

 return (0);

 usage:
 (void) fprintf(stderr,
     "usage: %s %s <src ET> <src EU> <dst1 ET> <dst1 EU>\n"
     "       [<dst2 ET> <dst2 EU>] [inv1] [inv2]\n",
     getprogname(), cname);
 return (1);
}
