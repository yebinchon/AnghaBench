
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sock {size_t sk_protocol; } ;
struct TYPE_4__ {int entries; } ;
struct TYPE_6__ {TYPE_1__ hash; } ;
struct TYPE_5__ {scalar_t__ subscriptions; } ;


 int __sk_del_bind_node (struct sock*) ;
 int netlink_table_grab () ;
 int netlink_table_ungrab () ;
 TYPE_3__* nl_table ;
 TYPE_2__* nlk_sk (struct sock*) ;
 scalar_t__ sk_del_node_init (struct sock*) ;

__attribute__((used)) static void netlink_remove(struct sock *sk)
{
 netlink_table_grab();
 if (sk_del_node_init(sk))
  nl_table[sk->sk_protocol].hash.entries--;
 if (nlk_sk(sk)->subscriptions)
  __sk_del_bind_node(sk);
 netlink_table_ungrab();
}
