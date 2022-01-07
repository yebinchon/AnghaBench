
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_9__ {int language; } ;
struct TYPE_7__ {TYPE_4__* cursor; } ;
struct TYPE_8__ {TYPE_3__ res_info; TYPE_1__ u; int type; } ;
typedef TYPE_2__ rc_res_resource ;
typedef TYPE_3__ rc_res_res_info ;
typedef int rc_res_id ;
typedef int rc_rcdata_item ;
struct TYPE_10__ {int length; int const* data; void* yhotspot; void* xhotspot; } ;
typedef TYPE_4__ rc_cursor ;
typedef int bfd_byte ;


 int BIN_CURSOR_SIZE ;
 int RES_TYPE_CURSOR ;
 int RT_CURSOR ;
 TYPE_2__* define_standard_resource (int *,int ,int ,int ,int ) ;
 int * rcdata_render_as_buffer (int *,int*) ;
 scalar_t__ res_alloc (int) ;
 int resources ;
 void* windres_get_16 (int *,int *,int) ;
 int wrtarget ;

__attribute__((used)) static void
define_cursor_rcdata (rc_res_id id, const rc_res_res_info *resinfo,
        rc_rcdata_item *data)
{
  rc_cursor *c;
  rc_res_resource *r;
  rc_uint_type len_data;
  bfd_byte *pb_data;

  pb_data = rcdata_render_as_buffer (data, &len_data);

  c = (rc_cursor *) res_alloc (sizeof (rc_cursor));
  c->xhotspot = windres_get_16 (&wrtarget, pb_data, len_data);
  c->yhotspot = windres_get_16 (&wrtarget, pb_data + 2, len_data - 2);
  c->length = len_data - BIN_CURSOR_SIZE;
  c->data = (const bfd_byte *) (data + BIN_CURSOR_SIZE);

  r = define_standard_resource (&resources, RT_CURSOR, id, resinfo->language, 0);
  r->type = RES_TYPE_CURSOR;
  r->u.cursor = c;
  r->res_info = *resinfo;
}
