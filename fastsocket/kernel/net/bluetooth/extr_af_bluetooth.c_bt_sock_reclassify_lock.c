
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int BUG_ON (int ) ;
 int * bt_key_strings ;
 int * bt_lock_key ;
 int * bt_slock_key ;
 int * bt_slock_key_strings ;
 int sock_lock_init_class_and_name (struct sock*,int ,int *,int ,int *) ;
 int sock_owned_by_user (struct sock*) ;

__attribute__((used)) static inline void bt_sock_reclassify_lock(struct socket *sock, int proto)
{
 struct sock *sk = sock->sk;

 if (!sk)
  return;

 BUG_ON(sock_owned_by_user(sk));

 sock_lock_init_class_and_name(sk,
   bt_slock_key_strings[proto], &bt_slock_key[proto],
    bt_key_strings[proto], &bt_lock_key[proto]);
}
