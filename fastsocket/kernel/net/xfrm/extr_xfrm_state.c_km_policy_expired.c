
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_policy {int dummy; } ;
struct TYPE_4__ {int km_waitq; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int hard; } ;
struct km_event {int event; int pid; TYPE_1__ data; } ;


 int XFRM_MSG_POLEXPIRE ;
 int km_policy_notify (struct xfrm_policy*,int,struct km_event*) ;
 int wake_up (int *) ;
 struct net* xp_net (struct xfrm_policy*) ;

void km_policy_expired(struct xfrm_policy *pol, int dir, int hard, u32 pid)
{
 struct net *net = xp_net(pol);
 struct km_event c;

 c.data.hard = hard;
 c.pid = pid;
 c.event = XFRM_MSG_POLEXPIRE;
 km_policy_notify(pol, dir, &c);

 if (hard)
  wake_up(&net->xfrm.km_waitq);
}
