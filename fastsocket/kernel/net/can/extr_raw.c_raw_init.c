
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_4__ {int notifier_call; } ;
struct TYPE_3__ {int can_mask; scalar_t__ can_id; } ;
struct raw_sock {int count; int loopback; TYPE_2__ notifier; scalar_t__ recv_own_msgs; TYPE_1__ dfilter; TYPE_1__* filter; scalar_t__ ifindex; scalar_t__ bound; } ;


 int MASK_ALL ;
 int raw_notifier ;
 struct raw_sock* raw_sk (struct sock*) ;
 int register_netdevice_notifier (TYPE_2__*) ;

__attribute__((used)) static int raw_init(struct sock *sk)
{
 struct raw_sock *ro = raw_sk(sk);

 ro->bound = 0;
 ro->ifindex = 0;


 ro->dfilter.can_id = 0;
 ro->dfilter.can_mask = MASK_ALL;
 ro->filter = &ro->dfilter;
 ro->count = 1;


 ro->loopback = 1;
 ro->recv_own_msgs = 0;


 ro->notifier.notifier_call = raw_notifier;

 register_netdevice_notifier(&ro->notifier);

 return 0;
}
