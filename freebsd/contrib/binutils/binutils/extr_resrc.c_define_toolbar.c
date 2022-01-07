
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* rc_uint_type ;
struct TYPE_10__ {struct TYPE_10__* next; } ;
typedef TYPE_2__ rc_toolbar_item ;
struct TYPE_11__ {scalar_t__ nitems; TYPE_2__* items; void* button_height; void* button_width; } ;
typedef TYPE_3__ rc_toolbar ;
struct TYPE_13__ {int language; } ;
struct TYPE_9__ {TYPE_3__* toolbar; } ;
struct TYPE_12__ {TYPE_5__ res_info; TYPE_1__ u; int type; } ;
typedef TYPE_4__ rc_res_resource ;
typedef TYPE_5__ rc_res_res_info ;
typedef int rc_res_id ;


 int RES_TYPE_TOOLBAR ;
 int RT_TOOLBAR ;
 TYPE_4__* define_standard_resource (int *,int ,int ,int ,int ) ;
 scalar_t__ res_alloc (int) ;
 int resources ;

void
define_toolbar (rc_res_id id, rc_res_res_info *resinfo, rc_uint_type width, rc_uint_type height,
  rc_toolbar_item *items)
{
  rc_toolbar *t;
  rc_res_resource *r;

  t = (rc_toolbar *) res_alloc (sizeof (rc_toolbar));
  t->button_width = width;
  t->button_height = height;
  t->nitems = 0;
  t->items = items;
  while (items != ((void*)0))
  {
    t->nitems+=1;
    items = items->next;
  }
  r = define_standard_resource (&resources, RT_TOOLBAR, id, resinfo->language, 0);
  r->type = RES_TYPE_TOOLBAR;
  r->u.toolbar = t;
  r->res_info = *resinfo;
}
