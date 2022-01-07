
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
 scalar_t__ optind ;
 int optopt ;
 int stderr ;
 int usage (int ) ;
 int zpool_close (int *) ;
 int * zpool_open (int ,char*) ;
 int zpool_vdev_detach (int *,char*) ;

int
zpool_do_detach(int argc, char **argv)
{
 int c;
 char *poolname, *path;
 zpool_handle_t *zhp;
 int ret;


 while ((c = getopt(argc, argv, "f")) != -1) {
  switch (c) {
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
  (void) fprintf(stderr, gettext("missing pool name argument\n"));
  usage(B_FALSE);
 }

 if (argc < 2) {
  (void) fprintf(stderr,
      gettext("missing <device> specification\n"));
  usage(B_FALSE);
 }

 poolname = argv[0];
 path = argv[1];

 if ((zhp = zpool_open(g_zfs, poolname)) == ((void*)0))
  return (1);

 ret = zpool_vdev_detach(zhp, path);

 zpool_close(zhp);

 return (ret);
}
