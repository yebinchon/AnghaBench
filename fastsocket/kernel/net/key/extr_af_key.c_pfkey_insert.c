
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct netns_pfkey {int table; } ;
struct net {int dummy; } ;


 struct netns_pfkey* net_generic (struct net*,int ) ;
 int pfkey_net_id ;
 int pfkey_table_grab () ;
 int pfkey_table_ungrab () ;
 int sk_add_node (struct sock*,int *) ;
 struct net* sock_net (struct sock*) ;

__attribute__((used)) static void pfkey_insert(struct sock *sk)
{
 struct net *net = sock_net(sk);
 struct netns_pfkey *net_pfkey = net_generic(net, pfkey_net_id);

 pfkey_table_grab();
 sk_add_node(sk, &net_pfkey->table);
 pfkey_table_ungrab();
}
