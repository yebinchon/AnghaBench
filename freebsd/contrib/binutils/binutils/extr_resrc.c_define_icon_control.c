
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_10__ {int id; } ;
struct TYPE_11__ {TYPE_1__ u; scalar_t__ named; } ;
typedef TYPE_2__ rc_res_id ;
typedef int rc_rcdata_item ;
typedef int rc_dialog_ex ;
struct TYPE_12__ {int help; int * data; TYPE_2__ text; } ;
typedef TYPE_3__ rc_dialog_control ;


 int CTL_STATIC ;
 int SS_ICON ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int _ (char*) ;
 TYPE_3__* define_control (TYPE_2__,int,int,int,int ,int ,TYPE_2__,int,int) ;
 int rcparse_warning (int ) ;
 int res_string_to_id (TYPE_2__*,char*) ;

rc_dialog_control *
define_icon_control (rc_res_id iid, rc_uint_type id, rc_uint_type x,
       rc_uint_type y, rc_uint_type style,
       rc_uint_type exstyle, rc_uint_type help,
       rc_rcdata_item *data, rc_dialog_ex *ex)
{
  rc_dialog_control *n;
  rc_res_id tid;
  rc_res_id cid;

  if (style == 0)
    style = SS_ICON | WS_CHILD | WS_VISIBLE;
  res_string_to_id (&tid, "");
  cid.named = 0;
  cid.u.id = CTL_STATIC;
  n = define_control (tid, id, x, y, 0, 0, cid, style, exstyle);
  n->text = iid;
  if (help && ! ex)
    rcparse_warning (_("help ID requires DIALOGEX"));
  if (data && ! ex)
    rcparse_warning (_("control data requires DIALOGEX"));
  n->help = help;
  n->data = data;

  return n;
}
