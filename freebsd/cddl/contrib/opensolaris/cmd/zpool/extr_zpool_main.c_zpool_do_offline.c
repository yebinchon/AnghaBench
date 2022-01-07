
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 int getopt (int,char**,char*) ;
 char* gettext (char*) ;
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zpool_close (int *) ;
 int * zpool_open (int ,char*) ;
 scalar_t__ zpool_vdev_offline (int *,char*,int ) ;

int
zpool_do_offline(int argc, char **argv)
{
 int c, i;
 char *poolname;
 zpool_handle_t *zhp;
 int ret = 0;
 boolean_t istmp = B_FALSE;


 while ((c = getopt(argc, argv, "ft")) != -1) {
  switch (c) {
  case 't':
   istmp = B_TRUE;
   break;
  case 'f':
  case '?':
   (void) fprintf(stderr, gettext("invalid option '%c'\n"),
       optopt);
   usage(B_FALSE);
  }
 }

 argc -= optind;
 argv += optind;


 if (argc < 1) {
  (void) fprintf(stderr, gettext("missing pool name\n"));
  usage(B_FALSE);
 }
 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing device name\n"));
  usage(B_FALSE);
 }

 poolname = argv[0];

 if ((zhp = zpool_open(g_zfs, poolname)) == ((void*)0))
  return (1);

 for (i = 1; i < argc; i++) {
  if (zpool_vdev_offline(zhp, argv[i], istmp) != 0)
   ret = 1;
 }

 zpool_close(zhp);

 return (ret);
}
