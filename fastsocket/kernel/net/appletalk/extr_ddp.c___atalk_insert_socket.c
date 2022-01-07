
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int atalk_sockets ;
 int sk_add_node (struct sock*,int *) ;

__attribute__((used)) static inline void __atalk_insert_socket(struct sock *sk)
{
 sk_add_node(sk, &atalk_sockets);
}
