
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_int16_t ;
struct TYPE_2__ {void* cv_serial; scalar_t__ cv_volid; } ;
struct changer_set_voltag_request {int csvr_flags; TYPE_1__ csvr_voltag; void* csvr_addr; int csvr_type; } ;
typedef int csvr ;


 int CHIOSETVOLTAG ;
 int CSVR_ALTERNATE ;
 int CSVR_MODE_CLEAR ;
 int CSVR_MODE_REPLACE ;
 int CSVR_MODE_SET ;
 scalar_t__ atol (char*) ;
 int bzero (struct changer_set_voltag_request*,int) ;
 int changer_fd ;
 int changer_name ;
 int err (int,char*,int ) ;
 int fprintf (int ,char*,char*,char const*) ;
 int getopt (int,char**,char*) ;
 char* getprogname () ;
 scalar_t__ ioctl (int ,int ,struct changer_set_voltag_request*) ;
 int optind ;
 int optreset ;
 int parse_element_type (char*) ;
 int stderr ;
 int strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int warnx (char*,char const*) ;

__attribute__((used)) static int
do_voltag(const char *cname, int argc, char **argv)
{
 int force = 0;
 int clear = 0;
 int alternate = 0;
 int c;
 struct changer_set_voltag_request csvr;

 bzero(&csvr, sizeof(csvr));

 optind = optreset = 1;
 while ((c = getopt(argc, argv, "fca")) != -1) {
  switch (c) {
  case 'f':
   force = 1;
   break;
  case 'c':
   clear = 1;
   break;
  case 'a':
   alternate = 1;
   break;
  default:
   warnx("%s: bad option", cname);
   goto usage;
  }
 }

 argc -= optind;
 argv += optind;

 if (argc < 2) {
  warnx("%s: missing element specification", cname);
  goto usage;
 }

 csvr.csvr_type = parse_element_type(argv[0]);
 csvr.csvr_addr = (u_int16_t)atol(argv[1]);

 if (!clear) {
  if (argc < 3 || argc > 4) {
   warnx("%s: missing argument", cname);
   goto usage;
  }

  if (force)
   csvr.csvr_flags = CSVR_MODE_REPLACE;
  else
   csvr.csvr_flags = CSVR_MODE_SET;

  if (strlen(argv[2]) > sizeof(csvr.csvr_voltag.cv_volid)) {
   warnx("%s: volume label too long", cname);
   goto usage;
  }

  strlcpy((char *)csvr.csvr_voltag.cv_volid, argv[2],
         sizeof(csvr.csvr_voltag.cv_volid));

  if (argc == 4) {
   csvr.csvr_voltag.cv_serial = (u_int16_t)atol(argv[3]);
  }
 } else {
  if (argc != 2) {
   warnx("%s: unexpected argument", cname);
   goto usage;
  }
  csvr.csvr_flags = CSVR_MODE_CLEAR;
 }

 if (alternate) {
  csvr.csvr_flags |= CSVR_ALTERNATE;
 }

 if (ioctl(changer_fd, CHIOSETVOLTAG, &csvr))
  err(1, "%s: CHIOSETVOLTAG", changer_name);

 return 0;
 usage:
 (void) fprintf(stderr,
         "usage: %s %s [-fca] <element> [<voltag> [<vsn>] ]\n",
         getprogname(), cname);
 return 1;
}
