
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
struct raw_sock {int dummy; } ;



__attribute__((used)) static inline struct raw_sock *raw_sk(const struct sock *sk)
{
 return (struct raw_sock *)sk;
}
