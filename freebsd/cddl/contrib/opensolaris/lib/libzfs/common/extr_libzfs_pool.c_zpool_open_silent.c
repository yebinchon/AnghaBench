
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;


 int strlcpy (int ,char const*,int) ;
 TYPE_1__* zfs_alloc (int *,int) ;
 int zpool_close (TYPE_1__*) ;
 scalar_t__ zpool_refresh_stats (TYPE_1__*,scalar_t__*) ;

int
zpool_open_silent(libzfs_handle_t *hdl, const char *pool, zpool_handle_t **ret)
{
 zpool_handle_t *zhp;
 boolean_t missing;

 if ((zhp = zfs_alloc(hdl, sizeof (zpool_handle_t))) == ((void*)0))
  return (-1);

 zhp->zpool_hdl = hdl;
 (void) strlcpy(zhp->zpool_name, pool, sizeof (zhp->zpool_name));

 if (zpool_refresh_stats(zhp, &missing) != 0) {
  zpool_close(zhp);
  return (-1);
 }

 if (missing) {
  zpool_close(zhp);
  *ret = ((void*)0);
  return (0);
 }

 *ret = zhp;
 return (0);
}
