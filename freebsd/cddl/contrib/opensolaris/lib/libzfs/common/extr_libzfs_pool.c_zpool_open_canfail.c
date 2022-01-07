
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
typedef int libzfs_handle_t ;
typedef scalar_t__ boolean_t ;


 int B_TRUE ;
 int EZFS_INVALIDNAME ;
 int EZFS_NOENT ;
 int TEXT_DOMAIN ;
 int dgettext (int ,char*) ;
 int strlcpy (int ,char const*,int) ;
 TYPE_1__* zfs_alloc (int *,int) ;
 int zfs_error_aux (int *,int ) ;
 int zfs_error_fmt (int *,int ,int ,char const*) ;
 int zpool_close (TYPE_1__*) ;
 int zpool_name_valid (int *,int ,char const*) ;
 scalar_t__ zpool_refresh_stats (TYPE_1__*,scalar_t__*) ;

zpool_handle_t *
zpool_open_canfail(libzfs_handle_t *hdl, const char *pool)
{
 zpool_handle_t *zhp;
 boolean_t missing;




 if (!zpool_name_valid(hdl, B_TRUE, pool)) {
  (void) zfs_error_fmt(hdl, EZFS_INVALIDNAME,
      dgettext(TEXT_DOMAIN, "cannot open '%s'"),
      pool);
  return (((void*)0));
 }

 if ((zhp = zfs_alloc(hdl, sizeof (zpool_handle_t))) == ((void*)0))
  return (((void*)0));

 zhp->zpool_hdl = hdl;
 (void) strlcpy(zhp->zpool_name, pool, sizeof (zhp->zpool_name));

 if (zpool_refresh_stats(zhp, &missing) != 0) {
  zpool_close(zhp);
  return (((void*)0));
 }

 if (missing) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "no such pool"));
  (void) zfs_error_fmt(hdl, EZFS_NOENT,
      dgettext(TEXT_DOMAIN, "cannot open '%s'"), pool);
  zpool_close(zhp);
  return (((void*)0));
 }

 return (zhp);
}
