
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int zfs_name; int * zfs_hdl; } ;
typedef TYPE_1__ zfs_handle_t ;
struct TYPE_13__ {int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int libzfs_handle_t ;


 TYPE_1__* calloc (int,int) ;
 int free (TYPE_1__*) ;
 int get_stats_ioctl (TYPE_1__*,TYPE_2__*) ;
 int make_dataset_handle_common (TYPE_1__*,TYPE_2__*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ zcmd_alloc_dst_nvlist (int *,TYPE_2__*,int ) ;
 int zcmd_free_nvlists (TYPE_2__*) ;

zfs_handle_t *
make_dataset_handle(libzfs_handle_t *hdl, const char *path)
{
 zfs_cmd_t zc = { 0 };

 zfs_handle_t *zhp = calloc(sizeof (zfs_handle_t), 1);

 if (zhp == ((void*)0))
  return (((void*)0));

 zhp->zfs_hdl = hdl;
 (void) strlcpy(zhp->zfs_name, path, sizeof (zhp->zfs_name));
 if (zcmd_alloc_dst_nvlist(hdl, &zc, 0) != 0) {
  free(zhp);
  return (((void*)0));
 }
 if (get_stats_ioctl(zhp, &zc) == -1) {
  zcmd_free_nvlists(&zc);
  free(zhp);
  return (((void*)0));
 }
 if (make_dataset_handle_common(zhp, &zc) == -1) {
  free(zhp);
  zhp = ((void*)0);
 }
 zcmd_free_nvlists(&zc);
 return (zhp);
}
