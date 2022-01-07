
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 int history_str ;
 void* log_history ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int * strchr (char*,char) ;
 int usage (void*) ;
 int zpool_close (int *) ;
 scalar_t__ zpool_destroy (int *,int ) ;
 scalar_t__ zpool_disable_datasets (int *,void*) ;
 char* zpool_get_name (int *) ;
 int * zpool_open_canfail (int ,char*) ;

int
zpool_do_destroy(int argc, char **argv)
{
 boolean_t force = B_FALSE;
 int c;
 char *pool;
 zpool_handle_t *zhp;
 int ret;


 while ((c = getopt(argc, argv, "f")) != -1) {
  switch (c) {
  case 'f':
   force = B_TRUE;
   break;
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool argument\n"));
  usage(B_FALSE);
 }
 if (argc > 1) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 pool = argv[0];

 if ((zhp = zpool_open_canfail(g_zfs, pool)) == ((void*)0)) {




  if (strchr(pool, '/') != ((void*)0))
   (void) fprintf(stderr, gettext("use 'zfs destroy' to "
       "destroy a dataset\n"));
  return (1);
 }

 if (zpool_disable_datasets(zhp, force) != 0) {
  (void) fprintf(stderr, gettext("could not destroy '%s': "
      "could not unmount datasets\n"), zpool_get_name(zhp));
  return (1);
 }


 log_history = B_FALSE;

 ret = (zpool_destroy(zhp, history_str) != 0);

 zpool_close(zhp);

 return (ret);
}
