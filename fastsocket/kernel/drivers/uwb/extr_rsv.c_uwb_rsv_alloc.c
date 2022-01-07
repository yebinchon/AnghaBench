
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; } ;
struct uwb_rsv {int handle_timeout_work; struct uwb_rc* rc; TYPE_1__ timer; int kref; int pal_node; int rc_node; } ;
struct uwb_rc {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int init_timer (TYPE_1__*) ;
 int kref_init (int *) ;
 struct uwb_rsv* kzalloc (int,int ) ;
 int uwb_rsv_handle_timeout_work ;
 int uwb_rsv_timer ;

__attribute__((used)) static struct uwb_rsv *uwb_rsv_alloc(struct uwb_rc *rc)
{
 struct uwb_rsv *rsv;

 rsv = kzalloc(sizeof(struct uwb_rsv), GFP_KERNEL);
 if (!rsv)
  return ((void*)0);

 INIT_LIST_HEAD(&rsv->rc_node);
 INIT_LIST_HEAD(&rsv->pal_node);
 kref_init(&rsv->kref);
 init_timer(&rsv->timer);
 rsv->timer.function = uwb_rsv_timer;
 rsv->timer.data = (unsigned long)rsv;

 rsv->rc = rc;
 INIT_WORK(&rsv->handle_timeout_work, uwb_rsv_handle_timeout_work);

 return rsv;
}
