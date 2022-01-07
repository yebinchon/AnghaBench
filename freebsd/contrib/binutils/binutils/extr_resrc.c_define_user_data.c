
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_47__ TYPE_8__ ;
typedef struct TYPE_46__ TYPE_7__ ;
typedef struct TYPE_45__ TYPE_6__ ;
typedef struct TYPE_44__ TYPE_5__ ;
typedef struct TYPE_43__ TYPE_4__ ;
typedef struct TYPE_42__ TYPE_3__ ;
typedef struct TYPE_41__ TYPE_2__ ;
typedef struct TYPE_40__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_45__ {int language; } ;
struct TYPE_43__ {TYPE_8__* userdata; } ;
struct TYPE_44__ {TYPE_6__ res_info; TYPE_4__ u; int type; } ;
typedef TYPE_5__ rc_res_resource ;
typedef TYPE_6__ rc_res_res_info ;
struct TYPE_40__ {int id; } ;
struct TYPE_46__ {scalar_t__ named; TYPE_1__ u; } ;
typedef TYPE_7__ rc_res_id ;
struct TYPE_41__ {int * data; int length; } ;
struct TYPE_42__ {TYPE_2__ buffer; } ;
struct TYPE_47__ {TYPE_3__ u; int type; int * next; } ;
typedef TYPE_8__ rc_rcdata_item ;
typedef int bfd_byte ;


 int RCDATA_BUFFER ;
 int RES_TYPE_USERDATA ;
 int define_bitmap_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 int define_cursor_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 int define_font_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 int define_fontdir_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 int define_group_cursor_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 int define_group_icon_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 int define_icon_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 int define_messagetable_rcdata (TYPE_7__,TYPE_6__ const*,TYPE_8__*) ;
 TYPE_5__* define_resource (int *,int,TYPE_7__*,int ) ;
 int * rcdata_render_as_buffer (TYPE_8__*,int *) ;
 scalar_t__ res_alloc (int) ;
 int resources ;

void
define_user_data (rc_res_id id, rc_res_id type,
    const rc_res_res_info *resinfo,
    rc_rcdata_item *data)
{
  rc_res_id ids[3];
  rc_res_resource *r;
  bfd_byte *pb_data;
  rc_uint_type len_data;


  if (type.named == 0)
    {
      switch (type.u.id)
      {
      case 132:
 define_fontdir_rcdata (id, resinfo, data);
 return;
      case 133:
 define_font_rcdata (id, resinfo, data);
 return;
      case 129:
 define_icon_rcdata (id, resinfo, data);
 return;
      case 135:
 define_bitmap_rcdata (id, resinfo, data);
 return;
      case 134:
 define_cursor_rcdata (id, resinfo, data);
 return;
      case 130:
 define_group_icon_rcdata (id, resinfo, data);
 return;
      case 131:
 define_group_cursor_rcdata (id, resinfo, data);
 return;
      case 128:
 define_messagetable_rcdata (id, resinfo, data);
 return;
      default:

 break;
      }
    }
  ids[0] = type;
  ids[1] = id;
  ids[2].named = 0;
  ids[2].u.id = resinfo->language;

  r = define_resource (& resources, 3, ids, 0);
  r->type = RES_TYPE_USERDATA;
  r->u.userdata = ((rc_rcdata_item *)
     res_alloc (sizeof (rc_rcdata_item)));
  r->u.userdata->next = ((void*)0);
  r->u.userdata->type = RCDATA_BUFFER;
  pb_data = rcdata_render_as_buffer (data, &len_data);
  r->u.userdata->u.buffer.length = len_data;
  r->u.userdata->u.buffer.data = pb_data;
  r->res_info = *resinfo;
}
