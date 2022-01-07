
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state {int dummy; } ;
struct km_event {int event; } ;
 int printk (char*,int) ;
 int xfrm_aevent_state_notify (struct xfrm_state*,struct km_event*) ;
 int xfrm_exp_state_notify (struct xfrm_state*,struct km_event*) ;
 int xfrm_notify_sa (struct xfrm_state*,struct km_event*) ;
 int xfrm_notify_sa_flush (struct km_event*) ;

__attribute__((used)) static int xfrm_send_state_notify(struct xfrm_state *x, struct km_event *c)
{

 switch (c->event) {
 case 132:
  return xfrm_exp_state_notify(x, c);
 case 130:
  return xfrm_aevent_state_notify(x, c);
 case 133:
 case 128:
 case 129:
  return xfrm_notify_sa(x, c);
 case 131:
  return xfrm_notify_sa_flush(c);
 default:
   printk("xfrm_user: Unknown SA event %d\n", c->event);
   break;
 }

 return 0;

}
