
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct changer_move {int cm_tounit; int cm_totype; scalar_t__ cm_fromunit; scalar_t__ cm_fromtype; } ;
struct changer_element_status {int ces_flags; int ces_source_addr; int ces_source_type; } ;
typedef int cmd ;


 int CES_SOURCE_VALID ;
 scalar_t__ CHET_VT ;
 int CHIOMOVE ;
 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int errx (int,char*,char const*) ;
 int find_element (char*,scalar_t__*,scalar_t__*) ;
 int fprintf (int ,char*,char*,char const*) ;
 int free (struct changer_element_status*) ;
 struct changer_element_status* get_element_status (unsigned int,unsigned int,int) ;
 char* getprogname () ;
 int ioctl (int ,int ,struct changer_move*) ;
 int memset (struct changer_move*,int ,int) ;
 scalar_t__ parse_element_type (char*) ;
 scalar_t__ parse_element_unit (char*) ;
 int stderr ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_return(const char *cname, int argc, char **argv)
{
 struct changer_element_status *ces;
 struct changer_move cmd;
 uint16_t type, element;

 ++argv; --argc;

 if (argc < 2) {
  warnx("%s: too few arguments", cname);
  goto usage;
 } else if (argc > 3) {
  warnx("%s: too many arguments", cname);
  goto usage;
 }

 type = parse_element_type(*argv);
 ++argv; --argc;


 if (CHET_VT == type) {
  find_element(*argv, &type, &element);
 } else {
  element = parse_element_unit(*argv);
 }
 ++argv; --argc;


 ces = get_element_status((unsigned int)type, (unsigned int)element,
     CHET_VT == type);

 if (((void*)0) == ces)
  errx(1, "%s: null element status pointer", cname);

 if (!(ces->ces_flags & CES_SOURCE_VALID))
  errx(1, "%s: no source information", cname);

 (void) memset(&cmd, 0, sizeof(cmd));

 cmd.cm_fromtype = type;
 cmd.cm_fromunit = element;
 cmd.cm_totype = ces->ces_source_type;
 cmd.cm_tounit = ces->ces_source_addr;

 if (ioctl(changer_fd, CHIOMOVE, &cmd) == -1)
  err(1, "%s: CHIOMOVE", changer_name);
 free(ces);

 return(0);

usage:
 (void) fprintf(stderr, "usage: %s %s "
     "<from ET> <from EU>\n", getprogname(), cname);
 return(1);
}
