
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {scalar_t__ state; int pal_node; struct uwb_dbg* pal_priv; } ;
struct uwb_dbg {int list_lock; } ;


 scalar_t__ UWB_RSV_STATE_NONE ;
 int list_del (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int uwb_rsv_destroy (struct uwb_rsv*) ;
 int uwb_rsv_dump (char*,struct uwb_rsv*) ;

__attribute__((used)) static void uwb_dbg_rsv_cb(struct uwb_rsv *rsv)
{
 struct uwb_dbg *dbg = rsv->pal_priv;

 uwb_rsv_dump("debug", rsv);

 if (rsv->state == UWB_RSV_STATE_NONE) {
  spin_lock(&dbg->list_lock);
  list_del(&rsv->pal_node);
  spin_unlock(&dbg->list_lock);
  uwb_rsv_destroy(rsv);
 }
}
