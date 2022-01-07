
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_ROLLBACK ;
 int fnvlist_add_string (int *,char*,char const*) ;
 int * fnvlist_alloc () ;
 int lzc_ioctl (int ,char const*,int *,int **) ;
 int nvlist_free (int *) ;

int
lzc_rollback_to(const char *fsname, const char *snapname)
{
 nvlist_t *args;
 nvlist_t *result;
 int err;

 args = fnvlist_alloc();
 fnvlist_add_string(args, "target", snapname);
 err = lzc_ioctl(ZFS_IOC_ROLLBACK, fsname, args, &result);
 nvlist_free(args);
 nvlist_free(result);
 return (err);
}
