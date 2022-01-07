
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int sk_family; int sk_wmem_alloc; struct proto* sk_prot_creator; struct proto* sk_prot; } ;
struct proto {int dummy; } ;
struct net {int dummy; } ;
typedef int gfp_t ;


 int __GFP_ZERO ;
 int atomic_set (int *,int) ;
 int get_net (struct net*) ;
 struct sock* sk_prot_alloc (struct proto*,int,int) ;
 int sock_lock_init (struct sock*) ;
 int sock_net_set (struct sock*,int ) ;
 int sock_update_classid (struct sock*) ;
 int sock_update_netprioidx (struct sock*) ;

struct sock *sk_alloc(struct net *net, int family, gfp_t priority,
        struct proto *prot)
{
 struct sock *sk;

 sk = sk_prot_alloc(prot, priority | __GFP_ZERO, family);
 if (sk) {
  sk->sk_family = family;




  sk->sk_prot = sk->sk_prot_creator = prot;
  sock_lock_init(sk);
  sock_net_set(sk, get_net(net));
  atomic_set(&sk->sk_wmem_alloc, 1);

  sock_update_classid(sk);
  sock_update_netprioidx(sk);
 }

 return sk;
}
