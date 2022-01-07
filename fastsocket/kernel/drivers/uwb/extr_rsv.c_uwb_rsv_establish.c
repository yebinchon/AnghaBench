
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {int tiebreaker; int * owner; int rc_node; int mas; struct uwb_rc* rc; } ;
struct uwb_rc {int rsvs_mutex; int uwb_dev; int reservations; } ;
struct uwb_mas_bm {int dummy; } ;


 int EBUSY ;
 int UWB_RSV_ALLOC_NOT_FOUND ;
 int UWB_RSV_STATE_O_INITIATED ;
 int list_add_tail (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int random32 () ;
 int uwb_dev_get (int *) ;
 int uwb_drp_avail_reserve_pending (struct uwb_rc*,int *) ;
 int uwb_drp_available (struct uwb_rc*,struct uwb_mas_bm*) ;
 int uwb_rsv_find_best_allocation (struct uwb_rsv*,struct uwb_mas_bm*,int *) ;
 int uwb_rsv_get (struct uwb_rsv*) ;
 int uwb_rsv_get_stream (struct uwb_rsv*) ;
 int uwb_rsv_put_stream (struct uwb_rsv*) ;
 int uwb_rsv_set_state (struct uwb_rsv*,int ) ;

int uwb_rsv_establish(struct uwb_rsv *rsv)
{
 struct uwb_rc *rc = rsv->rc;
 struct uwb_mas_bm available;
 int ret;

 mutex_lock(&rc->rsvs_mutex);
 ret = uwb_rsv_get_stream(rsv);
 if (ret)
  goto out;

 rsv->tiebreaker = random32() & 1;

 uwb_drp_available(rc, &available);

 ret = uwb_rsv_find_best_allocation(rsv, &available, &rsv->mas);
 if (ret == UWB_RSV_ALLOC_NOT_FOUND) {
  ret = -EBUSY;
  uwb_rsv_put_stream(rsv);
  goto out;
 }

 ret = uwb_drp_avail_reserve_pending(rc, &rsv->mas);
 if (ret != 0) {
  uwb_rsv_put_stream(rsv);
  goto out;
 }

 uwb_rsv_get(rsv);
 list_add_tail(&rsv->rc_node, &rc->reservations);
 rsv->owner = &rc->uwb_dev;
 uwb_dev_get(rsv->owner);
 uwb_rsv_set_state(rsv, UWB_RSV_STATE_O_INITIATED);
out:
 mutex_unlock(&rc->rsvs_mutex);
 return ret;
}
