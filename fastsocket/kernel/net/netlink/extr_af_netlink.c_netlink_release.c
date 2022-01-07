
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {size_t sk_protocol; int sk_write_queue; } ;
struct netlink_sock {int * groups; scalar_t__ subscriptions; int module; scalar_t__ pid; int wait; } ;
struct netlink_notify {size_t protocol; scalar_t__ pid; int net; } ;
struct TYPE_2__ {scalar_t__ registered; int * module; int * listeners; } ;


 int BUG_ON (int) ;
 int NETLINK_URELEASE ;
 int atomic_notifier_call_chain (int *,int ,struct netlink_notify*) ;
 int kfree (int *) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int module_put (int ) ;
 int netlink_chain ;
 scalar_t__ netlink_is_kernel (struct sock*) ;
 int netlink_proto ;
 int netlink_remove (struct sock*) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 int netlink_update_listeners (struct sock*) ;
 TYPE_1__* nl_table ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int skb_queue_purge (int *) ;
 int sock_net (struct sock*) ;
 int sock_orphan (struct sock*) ;
 int sock_prot_inuse_add (int ,int *,int) ;
 int sock_put (struct sock*) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static int netlink_release(struct socket *sock)
{
 struct sock *sk = sock->sk;
 struct netlink_sock *nlk;

 if (!sk)
  return 0;

 netlink_remove(sk);
 sock_orphan(sk);
 nlk = nlk_sk(sk);






 sock->sk = ((void*)0);
 wake_up_interruptible_all(&nlk->wait);

 skb_queue_purge(&sk->sk_write_queue);

 if (nlk->pid && !nlk->subscriptions) {
  struct netlink_notify n = {
      .net = sock_net(sk),
      .protocol = sk->sk_protocol,
      .pid = nlk->pid,
       };
  atomic_notifier_call_chain(&netlink_chain,
    NETLINK_URELEASE, &n);
 }

 module_put(nlk->module);

 netlink_table_grab();
 if (netlink_is_kernel(sk)) {
  BUG_ON(nl_table[sk->sk_protocol].registered == 0);
  if (--nl_table[sk->sk_protocol].registered == 0) {
   kfree(nl_table[sk->sk_protocol].listeners);
   nl_table[sk->sk_protocol].module = ((void*)0);
   nl_table[sk->sk_protocol].registered = 0;
  }
 } else if (nlk->subscriptions)
  netlink_update_listeners(sk);
 netlink_table_ungrab();

 kfree(nlk->groups);
 nlk->groups = ((void*)0);

 local_bh_disable();
 sock_prot_inuse_add(sock_net(sk), &netlink_proto, -1);
 local_bh_enable();
 sock_put(sk);
 return 0;
}
