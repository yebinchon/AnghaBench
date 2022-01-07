
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int dummy; } ;
struct km_event {int event; } ;







 int printk (char*,int) ;
 int xfrm_exp_policy_notify (struct xfrm_policy*,int,struct km_event*) ;
 int xfrm_notify_policy (struct xfrm_policy*,int,struct km_event*) ;
 int xfrm_notify_policy_flush (struct km_event*) ;

__attribute__((used)) static int xfrm_send_policy_notify(struct xfrm_policy *xp, int dir, struct km_event *c)
{

 switch (c->event) {
 case 130:
 case 128:
 case 132:
  return xfrm_notify_policy(xp, dir, c);
 case 131:
  return xfrm_notify_policy_flush(c);
 case 129:
  return xfrm_exp_policy_notify(xp, dir, c);
 default:
  printk("xfrm_user: Unknown Policy event %d\n", c->event);
 }

 return 0;

}
