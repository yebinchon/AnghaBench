
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {size_t sk_family; } ;


 int * af_family_key_strings ;
 scalar_t__ af_family_keys ;
 int * af_family_slock_key_strings ;
 scalar_t__ af_family_slock_keys ;
 int sock_lock_init_class_and_name (struct sock*,int ,scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static inline void sock_lock_init(struct sock *sk)
{
 sock_lock_init_class_and_name(sk,
   af_family_slock_key_strings[sk->sk_family],
   af_family_slock_keys + sk->sk_family,
   af_family_key_strings[sk->sk_family],
   af_family_keys + sk->sk_family);
}
