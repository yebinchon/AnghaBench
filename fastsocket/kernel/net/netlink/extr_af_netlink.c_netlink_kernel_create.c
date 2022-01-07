
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct sock {int sk_data_ready; } ;
struct netlink_sock {void (* netlink_rcv ) (struct sk_buff*) ;int flags; } ;
struct net {int dummy; } ;
struct mutex {int dummy; } ;
struct module {int dummy; } ;
struct listeners_rcu_head {int dummy; } ;
struct TYPE_2__ {int registered; unsigned int groups; unsigned long* listeners; struct module* module; struct mutex* cb_mutex; } ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 int MAX_LINKS ;
 int NETLINK_KERNEL_SOCKET ;
 scalar_t__ NLGRPSZ (unsigned int) ;
 int PF_NETLINK ;
 int SOCK_DGRAM ;
 scalar_t__ __netlink_create (int *,struct socket*,struct mutex*,int) ;
 int init_net ;
 int kfree (unsigned long*) ;
 unsigned long* kzalloc (scalar_t__,int ) ;
 int netlink_data_ready ;
 scalar_t__ netlink_insert (struct sock*,struct net*,int ) ;
 int netlink_kernel_release (struct sock*) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 TYPE_1__* nl_table ;
 struct netlink_sock* nlk_sk (struct sock*) ;
 int sk_change_net (struct sock*,struct net*) ;
 scalar_t__ sock_create_lite (int ,int ,int,struct socket**) ;
 int sock_release (struct socket*) ;

struct sock *
netlink_kernel_create(struct net *net, int unit, unsigned int groups,
        void (*input)(struct sk_buff *skb),
        struct mutex *cb_mutex, struct module *module)
{
 struct socket *sock;
 struct sock *sk;
 struct netlink_sock *nlk;
 unsigned long *listeners = ((void*)0);

 BUG_ON(!nl_table);

 if (unit < 0 || unit >= MAX_LINKS)
  return ((void*)0);

 if (sock_create_lite(PF_NETLINK, SOCK_DGRAM, unit, &sock))
  return ((void*)0);







 if (__netlink_create(&init_net, sock, cb_mutex, unit) < 0)
  goto out_sock_release_nosk;

 sk = sock->sk;
 sk_change_net(sk, net);

 if (groups < 32)
  groups = 32;

 listeners = kzalloc(NLGRPSZ(groups) + sizeof(struct listeners_rcu_head),
       GFP_KERNEL);
 if (!listeners)
  goto out_sock_release;

 sk->sk_data_ready = netlink_data_ready;
 if (input)
  nlk_sk(sk)->netlink_rcv = input;

 if (netlink_insert(sk, net, 0))
  goto out_sock_release;

 nlk = nlk_sk(sk);
 nlk->flags |= NETLINK_KERNEL_SOCKET;

 netlink_table_grab();
 if (!nl_table[unit].registered) {
  nl_table[unit].groups = groups;
  nl_table[unit].listeners = listeners;
  nl_table[unit].cb_mutex = cb_mutex;
  nl_table[unit].module = module;
  nl_table[unit].registered = 1;
 } else {
  kfree(listeners);
  nl_table[unit].registered++;
 }
 netlink_table_ungrab();
 return sk;

out_sock_release:
 kfree(listeners);
 netlink_kernel_release(sk);
 return ((void*)0);

out_sock_release_nosk:
 sock_release(sock);
 return ((void*)0);
}
