
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sk_del_node_init (struct sock*) ;

__attribute__((used)) static void __unix_remove_socket(struct sock *sk)
{
 sk_del_node_init(sk);
}
