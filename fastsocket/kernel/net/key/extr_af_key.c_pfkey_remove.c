
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int pfkey_table_grab () ;
 int pfkey_table_ungrab () ;
 int sk_del_node_init (struct sock*) ;

__attribute__((used)) static void pfkey_remove(struct sock *sk)
{
 pfkey_table_grab();
 sk_del_node_init(sk);
 pfkey_table_ungrab();
}
