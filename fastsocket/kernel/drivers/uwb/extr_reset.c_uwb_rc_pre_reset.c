
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int (* stop ) (struct uwb_rc*) ;} ;


 int stub1 (struct uwb_rc*) ;
 int uwb_radio_reset_state (struct uwb_rc*) ;
 int uwb_rsv_remove_all (struct uwb_rc*) ;
 int uwbd_flush (struct uwb_rc*) ;

void uwb_rc_pre_reset(struct uwb_rc *rc)
{
 rc->stop(rc);
 uwbd_flush(rc);

 uwb_radio_reset_state(rc);
 uwb_rsv_remove_all(rc);
}
