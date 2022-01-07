
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* rc_uint_type ;
typedef int rc_res_id ;
struct TYPE_3__ {scalar_t__ help; int * data; int text; int class; void* height; void* width; void* y; void* x; void* exstyle; void* style; void* id; int * next; } ;
typedef TYPE_1__ rc_dialog_control ;


 scalar_t__ res_alloc (int) ;

rc_dialog_control *
define_control (const rc_res_id iid, rc_uint_type id, rc_uint_type x,
  rc_uint_type y, rc_uint_type width, rc_uint_type height,
  const rc_res_id class, rc_uint_type style,
  rc_uint_type exstyle)
{
  rc_dialog_control *n;

  n = (rc_dialog_control *) res_alloc (sizeof (rc_dialog_control));
  n->next = ((void*)0);
  n->id = id;
  n->style = style;
  n->exstyle = exstyle;
  n->x = x;
  n->y = y;
  n->width = width;
  n->height = height;
  n->class = class;
  n->text = iid;
  n->data = ((void*)0);
  n->help = 0;

  return n;
}
