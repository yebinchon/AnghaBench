
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rsv {scalar_t__ state; struct uwb_rc* rc; } ;
struct uwb_rc {int rsvs_mutex; } ;


 scalar_t__ UWB_RSV_STATE_NONE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int uwb_rsv_set_state (struct uwb_rsv*,scalar_t__) ;

void uwb_rsv_terminate(struct uwb_rsv *rsv)
{
 struct uwb_rc *rc = rsv->rc;

 mutex_lock(&rc->rsvs_mutex);

 if (rsv->state != UWB_RSV_STATE_NONE)
  uwb_rsv_set_state(rsv, UWB_RSV_STATE_NONE);

 mutex_unlock(&rc->rsvs_mutex);
}
