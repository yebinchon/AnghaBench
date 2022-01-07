
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct info {int set; int wset; int win; int fd; int t; int ldisc; } ;
typedef int speed_t ;
typedef enum FMT { ____Placeholder_FMT } FMT ;





 int O_NONBLOCK ;
 int O_RDONLY ;

 int STDIN_FILENO ;
 int TIOCGETD ;
 int TIOCGWINSZ ;
 int TIOCSWINSZ ;
 int UINT_MAX ;
 int cfsetispeed (int *,int ) ;
 int cfsetospeed (int *,int ) ;
 int checkredirect () ;
 scalar_t__ csearch (char***,struct info*) ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*) ;
 int exit (int ) ;
 int getopt (int,char**,char*) ;
 int gprint (int *,int *,int ) ;
 int gread (int *,char*) ;
 scalar_t__ ioctl (int ,int ,int *) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ ksearch (char***,struct info*) ;
 scalar_t__ msearch (char***,struct info*) ;
 int open (char*,int) ;
 char* optarg ;
 scalar_t__ opterr ;
 int optind ;
 int print (int *,int *,int ,int) ;
 scalar_t__ strlen (char*) ;
 int strncmp (char*,char*,int) ;
 scalar_t__ strspn (char*,char*) ;
 int strtonum (char*,int ,int ,char const**) ;
 scalar_t__ tcgetattr (int ,int *) ;
 scalar_t__ tcsetattr (int ,int ,int *) ;
 int usage () ;
 int warn (char*) ;
 int warnx (char*,char*) ;

int
main(int argc, char *argv[])
{
 struct info i;
 enum FMT fmt;
 int ch;
 const char *file, *errstr = ((void*)0);

 fmt = 129;
 i.fd = STDIN_FILENO;
 file = "stdin";

 opterr = 0;
 while (optind < argc &&
     strspn(argv[optind], "-aefg") == strlen(argv[optind]) &&
     (ch = getopt(argc, argv, "aef:g")) != -1)
  switch(ch) {
  case 'a':
   fmt = 128;
   break;
  case 'e':
   fmt = 131;
   break;
  case 'f':
   if ((i.fd = open(optarg, O_RDONLY | O_NONBLOCK)) < 0)
    err(1, "%s", optarg);
   file = optarg;
   break;
  case 'g':
   fmt = 130;
   break;
  case '?':
  default:
   goto args;
  }

args: argc -= optind;
 argv += optind;

 if (tcgetattr(i.fd, &i.t) < 0)
  errx(1, "%s isn't a terminal", file);
 if (ioctl(i.fd, TIOCGETD, &i.ldisc) < 0)
  err(1, "TIOCGETD");
 if (ioctl(i.fd, TIOCGWINSZ, &i.win) < 0)
  warn("TIOCGWINSZ");

 checkredirect();

 switch(fmt) {
 case 129:
  if (*argv)
   break;

 case 131:
 case 128:
  print(&i.t, &i.win, i.ldisc, fmt);
  break;
 case 130:
  gprint(&i.t, &i.win, i.ldisc);
  break;
 }

 for (i.set = i.wset = 0; *argv; ++argv) {
  if (ksearch(&argv, &i))
   continue;

  if (csearch(&argv, &i))
   continue;

  if (msearch(&argv, &i))
   continue;

  if (isdigit(**argv)) {
   speed_t speed;

   speed = strtonum(*argv, 0, UINT_MAX, &errstr);
   if (errstr)
    err(1, "speed");
   cfsetospeed(&i.t, speed);
   cfsetispeed(&i.t, speed);
   i.set = 1;
   continue;
  }

  if (!strncmp(*argv, "gfmt1", sizeof("gfmt1") - 1)) {
   gread(&i.t, *argv + sizeof("gfmt1") - 1);
   i.set = 1;
   continue;
  }

  warnx("illegal option -- %s", *argv);
  usage();
 }

 if (i.set && tcsetattr(i.fd, 0, &i.t) < 0)
  err(1, "tcsetattr");
 if (i.wset && ioctl(i.fd, TIOCSWINSZ, &i.win) < 0)
  warn("TIOCSWINSZ");
 exit(0);
}
