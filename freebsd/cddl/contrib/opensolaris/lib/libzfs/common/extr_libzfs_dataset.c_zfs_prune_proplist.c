
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t zfs_prop_t ;
struct TYPE_3__ {scalar_t__* zfs_props_table; int zfs_props; } ;
typedef TYPE_1__ zfs_handle_t ;
typedef scalar_t__ uint8_t ;
typedef int nvpair_t ;


 scalar_t__ B_FALSE ;
 size_t ZPROP_INVAL ;
 int * nvlist_next_nvpair (int ,int *) ;
 int nvlist_remove (int ,int ,int ) ;
 int nvpair_name (int *) ;
 int nvpair_type (int *) ;
 size_t zfs_name_to_prop (int ) ;

void
zfs_prune_proplist(zfs_handle_t *zhp, uint8_t *props)
{
 nvpair_t *curr;





 zhp->zfs_props_table = props;

 curr = nvlist_next_nvpair(zhp->zfs_props, ((void*)0));

 while (curr) {
  zfs_prop_t zfs_prop = zfs_name_to_prop(nvpair_name(curr));
  nvpair_t *next = nvlist_next_nvpair(zhp->zfs_props, curr);
  if (zfs_prop != ZPROP_INVAL && props[zfs_prop] == B_FALSE)
   (void) nvlist_remove(zhp->zfs_props,
       nvpair_name(curr), nvpair_type(curr));
  curr = next;
 }
}
