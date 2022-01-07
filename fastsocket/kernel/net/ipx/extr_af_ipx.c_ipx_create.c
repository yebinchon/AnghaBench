
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; int * ops; } ;
struct sock {int sk_no_check; } ;
struct net {int dummy; } ;


 int EAFNOSUPPORT ;
 int ENOMEM ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_IPX ;
 scalar_t__ SOCK_DGRAM ;
 struct net init_net ;
 int ipx_dgram_ops ;
 int ipx_proto ;
 struct sock* sk_alloc (struct net*,int ,int ,int *) ;
 int sk_refcnt_debug_inc (struct sock*) ;
 int sock_init_data (struct socket*,struct sock*) ;

__attribute__((used)) static int ipx_create(struct net *net, struct socket *sock, int protocol,
        int kern)
{
 int rc = -ESOCKTNOSUPPORT;
 struct sock *sk;

 if (net != &init_net)
  return -EAFNOSUPPORT;







 if (sock->type != SOCK_DGRAM)
  goto out;

 rc = -ENOMEM;
 sk = sk_alloc(net, PF_IPX, GFP_KERNEL, &ipx_proto);
 if (!sk)
  goto out;

 sk_refcnt_debug_inc(sk);
 sock_init_data(sock, sk);
 sk->sk_no_check = 1;
 sock->ops = &ipx_dgram_ops;
 rc = 0;
out:
 return rc;
}
