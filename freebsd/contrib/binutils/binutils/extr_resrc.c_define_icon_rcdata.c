
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_10__ {int language; } ;
struct TYPE_7__ {int * data; int length; } ;
struct TYPE_8__ {TYPE_1__ data; } ;
struct TYPE_9__ {TYPE_4__ res_info; TYPE_2__ u; int type; } ;
typedef TYPE_3__ rc_res_resource ;
typedef TYPE_4__ rc_res_res_info ;
typedef int rc_res_id ;
typedef int rc_rcdata_item ;
typedef int bfd_byte ;


 int RES_TYPE_ICON ;
 int RT_ICON ;
 TYPE_3__* define_standard_resource (int *,int ,int ,int ,int ) ;
 int * rcdata_render_as_buffer (int *,int *) ;
 int resources ;

__attribute__((used)) static void
define_icon_rcdata (rc_res_id id, const rc_res_res_info *resinfo,
      rc_rcdata_item *data)
{
  rc_res_resource *r;
  rc_uint_type len_data;
  bfd_byte *pb_data;

  pb_data = rcdata_render_as_buffer (data, &len_data);

  r = define_standard_resource (&resources, RT_ICON, id, resinfo->language, 0);
  r->type = RES_TYPE_ICON;
  r->u.data.length = len_data;
  r->u.data.data = pb_data;
  r->res_info = *resinfo;
}
