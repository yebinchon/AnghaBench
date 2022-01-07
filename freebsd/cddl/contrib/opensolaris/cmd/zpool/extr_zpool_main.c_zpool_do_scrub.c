
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cb_type; scalar_t__ cb_scrub_cmd; int cb_argc; char** cb_argv; } ;
typedef TYPE_1__ scrub_cbdata_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ POOL_SCAN_NONE ;
 scalar_t__ POOL_SCAN_SCRUB ;
 scalar_t__ POOL_SCRUB_NORMAL ;
 scalar_t__ POOL_SCRUB_PAUSE ;
 int for_each_pool (int,char**,int ,int *,int ,TYPE_1__*) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int scrub_callback ;
 int stderr ;
 int usage (int ) ;

int
zpool_do_scrub(int argc, char **argv)
{
 int c;
 scrub_cbdata_t cb;

 cb.cb_type = POOL_SCAN_SCRUB;
 cb.cb_scrub_cmd = POOL_SCRUB_NORMAL;


 while ((c = getopt(argc, argv, "sp")) != -1) {
  switch (c) {
  case 's':
   cb.cb_type = POOL_SCAN_NONE;
   break;
  case 'p':
   cb.cb_scrub_cmd = POOL_SCRUB_PAUSE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 if (cb.cb_type == POOL_SCAN_NONE &&
     cb.cb_scrub_cmd == POOL_SCRUB_PAUSE) {
  (void) fprintf(stderr, gettext("invalid option combination: "
      "-s and -p are mutually exclusive\n"));
  usage(B_FALSE);
 }

 cb.cb_argc = argc;
 cb.cb_argv = argv;
 argc -= optind;
 argv += optind;

 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name argument\n"));
  usage(B_FALSE);
 }

 return (for_each_pool(argc, argv, B_TRUE, ((void*)0), scrub_callback, &cb));
}
