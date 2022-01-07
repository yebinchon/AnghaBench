
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
 int usage (void*) ;
 int zpool_close (int *) ;
 scalar_t__ zpool_disable_datasets (int *,void*) ;
 scalar_t__ zpool_export (int *,void*,int ) ;
 scalar_t__ zpool_export_force (int *,int ) ;
 int * zpool_open_canfail (int ,char*) ;

int
zpool_do_export(int argc, char **argv)
{
 boolean_t force = B_FALSE;
 boolean_t hardforce = B_FALSE;
 int c;
 zpool_handle_t *zhp;
 int ret;
 int i;


 while ((c = getopt(argc, argv, "fF")) != -1) {
  switch (c) {
  case 'f':
   force = B_TRUE;
   break;
  case 'F':
   hardforce = B_TRUE;
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

 ret = 0;
 for (i = 0; i < argc; i++) {
  if ((zhp = zpool_open_canfail(g_zfs, argv[i])) == ((void*)0)) {
   ret = 1;
   continue;
  }

  if (zpool_disable_datasets(zhp, force) != 0) {
   ret = 1;
   zpool_close(zhp);
   continue;
  }


  log_history = B_FALSE;

  if (hardforce) {
   if (zpool_export_force(zhp, history_str) != 0)
    ret = 1;
  } else if (zpool_export(zhp, force, history_str) != 0) {
   ret = 1;
  }

  zpool_close(zhp);
 }

 return (ret);
}
