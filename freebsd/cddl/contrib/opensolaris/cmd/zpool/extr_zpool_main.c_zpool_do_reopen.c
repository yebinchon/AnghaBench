
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;


 int B_FALSE ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zpool_close (int *) ;
 int * zpool_open_canfail (int ,char*) ;
 int zpool_reopen (int *) ;

int
zpool_do_reopen(int argc, char **argv)
{
 int c;
 int ret = 0;
 zpool_handle_t *zhp;
 char *pool;


 while ((c = getopt(argc, argv, "")) != -1) {
  switch (c) {
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc--;
 argv++;

 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name\n"));
  usage(B_FALSE);
 }

 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 pool = argv[0];
 if ((zhp = zpool_open_canfail(g_zfs, pool)) == ((void*)0))
  return (1);

 ret = zpool_reopen(zhp);
 zpool_close(zhp);
 return (ret);
}
