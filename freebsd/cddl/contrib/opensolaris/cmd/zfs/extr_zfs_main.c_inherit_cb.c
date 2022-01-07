
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zfs_handle_t ;
struct TYPE_2__ {int cb_received; int cb_propname; } ;
typedef TYPE_1__ inherit_cbdata_t ;


 scalar_t__ zfs_prop_inherit (int *,int ,int ) ;

__attribute__((used)) static int
inherit_cb(zfs_handle_t *zhp, void *data)
{
 inherit_cbdata_t *cb = data;

 return (zfs_prop_inherit(zhp, cb->cb_propname, cb->cb_received) != 0);
}
