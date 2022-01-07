
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct xfrm_state {int dummy; } ;
struct TYPE_4__ {int km_waitq; } ;
struct net {TYPE_2__ xfrm; } ;
struct TYPE_3__ {int hard; } ;
struct km_event {int event; int pid; TYPE_1__ data; } ;


 int XFRM_MSG_EXPIRE ;
 int km_state_notify (struct xfrm_state*,struct km_event*) ;
 int wake_up (int *) ;
 struct net* xs_net (struct xfrm_state*) ;

void km_state_expired(struct xfrm_state *x, int hard, u32 pid)
{
 struct net *net = xs_net(x);
 struct km_event c;

 c.data.hard = hard;
 c.pid = pid;
 c.event = XFRM_MSG_EXPIRE;
 km_state_notify(x, &c);

 if (hard)
  wake_up(&net->xfrm.km_waitq);
}
