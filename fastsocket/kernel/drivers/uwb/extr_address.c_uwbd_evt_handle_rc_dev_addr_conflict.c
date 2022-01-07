
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;
struct uwb_event {struct uwb_rc* rc; } ;


 int uwb_rc_dev_addr_assign (struct uwb_rc*) ;

int uwbd_evt_handle_rc_dev_addr_conflict(struct uwb_event *evt)
{
 struct uwb_rc *rc = evt->rc;

 return uwb_rc_dev_addr_assign(rc);
}
