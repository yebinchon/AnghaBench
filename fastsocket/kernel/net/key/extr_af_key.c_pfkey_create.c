
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; } ;
struct sock {int sk_destruct; int sk_family; } ;
struct netns_pfkey {int socks_nr; } ;
struct net {int dummy; } ;


 int CAP_NET_ADMIN ;
 int ENOMEM ;
 int EPERM ;
 int EPROTONOSUPPORT ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_KEY ;
 int PF_KEY_V2 ;
 scalar_t__ SOCK_RAW ;
 int atomic_inc (int *) ;
 int capable (int ) ;
 int key_proto ;
 struct netns_pfkey* net_generic (struct net*,int ) ;
 int pfkey_insert (struct sock*) ;
 int pfkey_net_id ;
 int pfkey_ops ;
 int pfkey_sock_destruct ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int pfkey_create(struct net *net, struct socket *sock, int protocol,
   int kern)
{
 struct netns_pfkey *net_pfkey = net_generic(net, pfkey_net_id);
 struct sock *sk;
 int err;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;
 if (sock->type != SOCK_RAW)
  return -ESOCKTNOSUPPORT;
 if (protocol != PF_KEY_V2)
  return -EPROTONOSUPPORT;

 err = -ENOMEM;
 sk = sk_alloc(net, PF_KEY, GFP_KERNEL, &key_proto);
 if (sk == ((void*)0))
  goto out;

 sock->ops = &pfkey_ops;
 sock_init_data(sock, sk);

 sk->sk_family = PF_KEY;
 sk->sk_destruct = pfkey_sock_destruct;

 atomic_inc(&net_pfkey->socks_nr);

 pfkey_insert(sk);

 return 0;
out:
 return err;
}
