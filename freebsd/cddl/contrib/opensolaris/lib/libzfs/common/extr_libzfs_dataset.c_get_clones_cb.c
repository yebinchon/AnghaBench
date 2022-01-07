
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
struct get_clones_arg {scalar_t__ numclones; int value; int origin; int buf; } ;


 int B_TRUE ;
 int ZFS_PROP_ORIGIN ;
 int fnvlist_add_boolean (int ,int ) ;
 scalar_t__ strcmp (int ,int ) ;
 int zfs_close (int *) ;
 int zfs_get_name (int *) ;
 int zfs_iter_children (int *,int (*) (int *,void*),struct get_clones_arg*) ;
 scalar_t__ zfs_prop_get (int *,int ,int ,int,int *,int *,int ,int ) ;

int
get_clones_cb(zfs_handle_t *zhp, void *arg)
{
 struct get_clones_arg *gca = arg;

 if (gca->numclones == 0) {
  zfs_close(zhp);
  return (0);
 }

 if (zfs_prop_get(zhp, ZFS_PROP_ORIGIN, gca->buf, sizeof (gca->buf),
     ((void*)0), ((void*)0), 0, B_TRUE) != 0)
  goto out;
 if (strcmp(gca->buf, gca->origin) == 0) {
  fnvlist_add_boolean(gca->value, zfs_get_name(zhp));
  gca->numclones--;
 }

out:
 (void) zfs_iter_children(zhp, get_clones_cb, gca);
 zfs_close(zhp);
 return (0);
}
