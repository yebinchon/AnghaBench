
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {TYPE_2__* sk_prot_creator; int sk_hash; int sk_reuse; int sk_family; int sk_bound_dev_if; } ;
struct inet_timewait_sock {int tw_substate; TYPE_2__* tw_prot; int tw_refcnt; int tw_transparent; scalar_t__ tw_ipv6only; int tw_hash; int tw_reuse; int tw_family; int tw_dport; int tw_sport; int tw_state; int tw_num; int tw_bound_dev_if; int tw_rcv_saddr; int tw_daddr; } ;
struct inet_sock {int transparent; int dport; int sport; int num; int rcv_saddr; int daddr; } ;
struct TYPE_4__ {int owner; TYPE_1__* twsk_prot; } ;
struct TYPE_3__ {int twsk_slab; } ;


 int GFP_ATOMIC ;
 int TCP_TIME_WAIT ;
 int __module_get (int ) ;
 int atomic_set (int *,int) ;
 int flags ;
 int hold_net (int ) ;
 struct inet_sock* inet_sk (struct sock const*) ;
 int inet_twsk_dead_node_init (struct inet_timewait_sock*) ;
 struct inet_timewait_sock* kmem_cache_alloc (int ,int ) ;
 int kmemcheck_annotate_bitfield (struct inet_timewait_sock*,int ) ;
 int sock_net (struct sock const*) ;
 int twsk_net_set (struct inet_timewait_sock*,int ) ;

struct inet_timewait_sock *inet_twsk_alloc(const struct sock *sk, const int state)
{
 struct inet_timewait_sock *tw =
  kmem_cache_alloc(sk->sk_prot_creator->twsk_prot->twsk_slab,
     GFP_ATOMIC);
 if (tw != ((void*)0)) {
  const struct inet_sock *inet = inet_sk(sk);

  kmemcheck_annotate_bitfield(tw, flags);


  tw->tw_daddr = inet->daddr;
  tw->tw_rcv_saddr = inet->rcv_saddr;
  tw->tw_bound_dev_if = sk->sk_bound_dev_if;
  tw->tw_num = inet->num;
  tw->tw_state = TCP_TIME_WAIT;
  tw->tw_substate = state;
  tw->tw_sport = inet->sport;
  tw->tw_dport = inet->dport;
  tw->tw_family = sk->sk_family;
  tw->tw_reuse = sk->sk_reuse;
  tw->tw_hash = sk->sk_hash;
  tw->tw_ipv6only = 0;
  tw->tw_transparent = inet->transparent;
  tw->tw_prot = sk->sk_prot_creator;
  twsk_net_set(tw, hold_net(sock_net(sk)));
  atomic_set(&tw->tw_refcnt, 1);
  inet_twsk_dead_node_init(tw);
  __module_get(tw->tw_prot->owner);
 }

 return tw;
}
