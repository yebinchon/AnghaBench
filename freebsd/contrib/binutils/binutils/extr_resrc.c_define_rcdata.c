
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int language; } ;
struct TYPE_6__ {int * rcdata; } ;
struct TYPE_7__ {TYPE_3__ res_info; TYPE_1__ u; int type; } ;
typedef TYPE_2__ rc_res_resource ;
typedef TYPE_3__ rc_res_res_info ;
typedef int rc_res_id ;
typedef int rc_rcdata_item ;


 int RES_TYPE_RCDATA ;
 int RT_RCDATA ;
 TYPE_2__* define_standard_resource (int *,int ,int ,int ,int ) ;
 int resources ;

void
define_rcdata (rc_res_id id, const rc_res_res_info *resinfo,
        rc_rcdata_item *data)
{
  rc_res_resource *r;

  r = define_standard_resource (&resources, RT_RCDATA, id,
    resinfo->language, 0);
  r->type = RES_TYPE_RCDATA;
  r->u.rcdata = data;
  r->res_info = *resinfo;
}
