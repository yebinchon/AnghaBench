
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zpool_handle_t ;
struct TYPE_2__ {int cb_any_successful; int cb_value; int cb_propname; } ;
typedef TYPE_1__ set_cbdata_t ;


 int B_TRUE ;
 int zpool_set_prop (int *,int ,int ) ;

int
set_callback(zpool_handle_t *zhp, void *data)
{
 int error;
 set_cbdata_t *cb = (set_cbdata_t *)data;

 error = zpool_set_prop(zhp, cb->cb_propname, cb->cb_value);

 if (!error)
  cb->cb_any_successful = B_TRUE;

 return (error);
}
