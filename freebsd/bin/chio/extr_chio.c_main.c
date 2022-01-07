
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * cc_name; int (* cc_handler ) (int *,int,char**) ;} ;


 int CHANGER_ENV_VAR ;
 int O_RDWR ;
 int * _PATH_CH ;
 scalar_t__ atexit (int ) ;
 int changer_fd ;
 int * changer_name ;
 int cleanup ;
 TYPE_1__* commands ;
 int err (int,char*,...) ;
 int errx (int,char*,char*) ;
 int exit (int ) ;
 int * getenv (int ) ;
 int getopt (int,char**,char*) ;
 int open (int *,int ,int) ;
 int * optarg ;
 scalar_t__ optind ;
 scalar_t__ strcmp (char*,int *) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,int *,int ) ;
 int stub1 (int *,int,char**) ;
 int usage () ;

int
main(int argc, char **argv)
{
 int ch, i;

 while ((ch = getopt(argc, argv, "f:")) != -1) {
  switch (ch) {
  case 'f':
   changer_name = optarg;
   break;

  default:
   usage();
  }
 }
 argc -= optind;
 argv += optind;

 if (argc == 0)
  usage();


 if (changer_name == ((void*)0))
  if ((changer_name = getenv(CHANGER_ENV_VAR)) == ((void*)0))
   changer_name = _PATH_CH;


 if ((changer_fd = open(changer_name, O_RDWR, 0600)) == -1)
  err(1, "%s: open", changer_name);


 if (atexit(cleanup))
  err(1, "can't register cleanup function");


 for (i = 0; commands[i].cc_name != ((void*)0); ++i)
  if (strcmp(*argv, commands[i].cc_name) == 0)
   break;
 if (commands[i].cc_name == ((void*)0)) {

  for (i = 0; commands[i].cc_name != ((void*)0); ++i)
   if (strncmp(*argv, commands[i].cc_name,
       strlen(*argv)) == 0)
    break;
 }

 if (commands[i].cc_name == ((void*)0))
  errx(1, "unknown command: %s", *argv);

 exit ((*commands[i].cc_handler)(commands[i].cc_name, argc, argv));

}
