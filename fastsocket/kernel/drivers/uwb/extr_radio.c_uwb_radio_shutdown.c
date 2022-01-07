
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;


 int uwb_radio_reset_state (struct uwb_rc*) ;
 int uwb_rc_reset (struct uwb_rc*) ;

void uwb_radio_shutdown(struct uwb_rc *rc)
{
 uwb_radio_reset_state(rc);
 uwb_rc_reset(rc);
}
