
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_event {int message; int type; int ts_jiffies; int rc; } ;


 int GFP_ATOMIC ;
 int UWB_EVT_MSG_RESET ;
 int UWB_EVT_TYPE_MSG ;
 int __uwb_rc_get (struct uwb_rc*) ;
 int jiffies ;
 struct uwb_event* kzalloc (int,int ) ;
 scalar_t__ unlikely (int ) ;
 int uwbd_event_queue (struct uwb_event*) ;

void uwb_rc_reset_all(struct uwb_rc *rc)
{
 struct uwb_event *evt;

 evt = kzalloc(sizeof(struct uwb_event), GFP_ATOMIC);
 if (unlikely(evt == ((void*)0)))
  return;

 evt->rc = __uwb_rc_get(rc);
 evt->ts_jiffies = jiffies;
 evt->type = UWB_EVT_TYPE_MSG;
 evt->message = UWB_EVT_MSG_RESET;

 uwbd_event_queue(evt);
}
