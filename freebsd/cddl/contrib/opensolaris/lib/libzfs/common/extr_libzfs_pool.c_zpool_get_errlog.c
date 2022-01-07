
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_5__* zpool_hdl; int zpool_name; int zpool_config; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_10__ {uintptr_t zc_nvlist_dst; int zc_nvlist_dst_size; int zc_name; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
struct TYPE_11__ {scalar_t__ zb_objset; scalar_t__ zb_object; } ;
typedef TYPE_3__ zbookmark_phys_t ;
typedef int uint64_t ;
typedef int nvlist_t ;
struct TYPE_12__ {int libzfs_fd; } ;


 scalar_t__ ENOMEM ;
 int KM_SLEEP ;
 int NV_UNIQUE_NAME ;
 int ZFS_IOC_ERROR_LOG ;
 int ZPOOL_CONFIG_ERRCOUNT ;
 int ZPOOL_ERR_DATASET ;
 int ZPOOL_ERR_OBJECT ;
 scalar_t__ errno ;
 int free (void*) ;
 scalar_t__ ioctl (int ,int ,TYPE_2__*) ;
 int no_memory (TYPE_5__*) ;
 scalar_t__ nvlist_add_nvlist (int *,char*,int *) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,scalar_t__) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_uint64 (int ,int ,int*) ;
 int qsort (TYPE_3__*,int,int,int ) ;
 int strcpy (int ,int ) ;
 int verify (int) ;
 int zbookmark_mem_compare ;
 void* zfs_alloc (TYPE_5__*,int) ;

int
zpool_get_errlog(zpool_handle_t *zhp, nvlist_t **nverrlistp)
{
 zfs_cmd_t zc = { 0 };
 uint64_t count;
 zbookmark_phys_t *zb = ((void*)0);
 int i;






 verify(nvlist_lookup_uint64(zhp->zpool_config, ZPOOL_CONFIG_ERRCOUNT,
     &count) == 0);
 if (count == 0)
  return (0);
 if ((zc.zc_nvlist_dst = (uintptr_t)zfs_alloc(zhp->zpool_hdl,
     count * sizeof (zbookmark_phys_t))) == (uintptr_t)((void*)0))
  return (-1);
 zc.zc_nvlist_dst_size = count;
 (void) strcpy(zc.zc_name, zhp->zpool_name);
 for (;;) {
  if (ioctl(zhp->zpool_hdl->libzfs_fd, ZFS_IOC_ERROR_LOG,
      &zc) != 0) {
   free((void *)(uintptr_t)zc.zc_nvlist_dst);
   if (errno == ENOMEM) {
    void *dst;

    count = zc.zc_nvlist_dst_size;
    dst = zfs_alloc(zhp->zpool_hdl, count *
        sizeof (zbookmark_phys_t));
    if (dst == ((void*)0))
     return (-1);
    zc.zc_nvlist_dst = (uintptr_t)dst;
   } else {
    return (-1);
   }
  } else {
   break;
  }
 }
 zb = ((zbookmark_phys_t *)(uintptr_t)zc.zc_nvlist_dst) +
     zc.zc_nvlist_dst_size;
 count -= zc.zc_nvlist_dst_size;

 qsort(zb, count, sizeof (zbookmark_phys_t), zbookmark_mem_compare);

 verify(nvlist_alloc(nverrlistp, 0, KM_SLEEP) == 0);




 for (i = 0; i < count; i++) {
  nvlist_t *nv;


  if (i > 0 && zb[i-1].zb_objset == zb[i].zb_objset &&
      zb[i-1].zb_object == zb[i].zb_object)
   continue;

  if (nvlist_alloc(&nv, NV_UNIQUE_NAME, KM_SLEEP) != 0)
   goto nomem;
  if (nvlist_add_uint64(nv, ZPOOL_ERR_DATASET,
      zb[i].zb_objset) != 0) {
   nvlist_free(nv);
   goto nomem;
  }
  if (nvlist_add_uint64(nv, ZPOOL_ERR_OBJECT,
      zb[i].zb_object) != 0) {
   nvlist_free(nv);
   goto nomem;
  }
  if (nvlist_add_nvlist(*nverrlistp, "ejk", nv) != 0) {
   nvlist_free(nv);
   goto nomem;
  }
  nvlist_free(nv);
 }

 free((void *)(uintptr_t)zc.zc_nvlist_dst);
 return (0);

nomem:
 free((void *)(uintptr_t)zc.zc_nvlist_dst);
 return (no_memory(zhp->zpool_hdl));
}
