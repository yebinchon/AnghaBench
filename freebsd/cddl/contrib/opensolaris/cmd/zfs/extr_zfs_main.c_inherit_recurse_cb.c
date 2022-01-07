
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ zfs_prop_t ;
typedef int zfs_handle_t ;
struct TYPE_2__ {int cb_received; int cb_propname; } ;
typedef TYPE_1__ inherit_cbdata_t ;


 scalar_t__ ZPROP_INVAL ;
 int zfs_get_type (int *) ;
 scalar_t__ zfs_name_to_prop (int ) ;
 scalar_t__ zfs_prop_inherit (int *,int ,int ) ;
 int zfs_prop_valid_for_type (scalar_t__,int ) ;

__attribute__((used)) static int
inherit_recurse_cb(zfs_handle_t *zhp, void *data)
{
 inherit_cbdata_t *cb = data;
 zfs_prop_t prop = zfs_name_to_prop(cb->cb_propname);





 if (prop != ZPROP_INVAL &&
     !zfs_prop_valid_for_type(prop, zfs_get_type(zhp)))
  return (0);

 return (zfs_prop_inherit(zhp, cb->cb_propname, cb->cb_received) != 0);
}
