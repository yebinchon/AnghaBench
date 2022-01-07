
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct pfkey_sock {int dummy; } ;



__attribute__((used)) static inline struct pfkey_sock *pfkey_sk(struct sock *sk)
{
 return (struct pfkey_sock *)sk;
}
