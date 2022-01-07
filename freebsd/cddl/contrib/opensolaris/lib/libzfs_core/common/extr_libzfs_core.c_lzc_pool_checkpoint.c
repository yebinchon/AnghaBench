
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvlist_t ;


 int ZFS_IOC_POOL_CHECKPOINT ;
 int * fnvlist_alloc () ;
 int fnvlist_free (int *) ;
 int lzc_ioctl (int ,char const*,int *,int **) ;

int
lzc_pool_checkpoint(const char *pool)
{
 int error;

 nvlist_t *result = ((void*)0);
 nvlist_t *args = fnvlist_alloc();

 error = lzc_ioctl(ZFS_IOC_POOL_CHECKPOINT, pool, args, &result);

 fnvlist_free(args);
 fnvlist_free(result);

 return (error);
}
