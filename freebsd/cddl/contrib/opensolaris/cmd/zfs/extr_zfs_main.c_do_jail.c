
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;


 int B_FALSE ;
 int ZFS_TYPE_FILESYSTEM ;
 int fprintf (int ,char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 int jail_getid (char*) ;
 int stderr ;
 int usage (int ) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_jail (int *,int,int) ;
 int * zfs_open (int ,char*,int ) ;

__attribute__((used)) static int
do_jail(int argc, char **argv, int attach)
{
 zfs_handle_t *zhp;
 int jailid, ret;


 if (argc < 3) {
  (void) fprintf(stderr, gettext("missing argument(s)\n"));
  usage(B_FALSE);
 }
 if (argc > 3) {
  (void) fprintf(stderr, gettext("too many arguments\n"));
  usage(B_FALSE);
 }

 jailid = jail_getid(argv[1]);
 if (jailid < 0) {
  (void) fprintf(stderr, gettext("invalid jail id or name\n"));
  usage(B_FALSE);
 }

 zhp = zfs_open(g_zfs, argv[2], ZFS_TYPE_FILESYSTEM);
 if (zhp == ((void*)0))
  return (1);

 ret = (zfs_jail(zhp, jailid, attach) != 0);

 zfs_close(zhp);
 return (ret);
}
