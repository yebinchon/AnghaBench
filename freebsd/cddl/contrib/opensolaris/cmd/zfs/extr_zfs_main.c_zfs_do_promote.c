
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int B_FALSE ;
 int ZFS_TYPE_FILESYSTEM ;
 int ZFS_TYPE_VOLUME ;
 int fprintf (int ,char*,...) ;
 int g_zfs ;
 char* gettext (char*) ;
 int stderr ;
 int usage (int ) ;
 int zfs_close (int *) ;
 int * zfs_open (int ,char*,int) ;
 scalar_t__ zfs_promote (int *) ;

__attribute__((used)) static int
zfs_do_promote(int argc, char **argv)
{
 zfs_handle_t *zhp;
 int ret = 0;


 if (argc > 1 && argv[1][0] == '-') {
  (void) fprintf(stderr, gettext("invalid option '%c'\n"),
      argv[1][1]);
  usage(B_FALSE);
 }


 if (argc < 2) {
  (void) fprintf(stderr, gettext("missing clone filesystem"
      " argument\n"));
  usage(B_FALSE);
 }
 if (argc > 2) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 zhp = zfs_open(g_zfs, argv[1], ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
 if (zhp == ((void*)0))
  return (1);

 ret = (zfs_promote(zhp) != 0);


 zfs_close(zhp);
 return (ret);
}
