
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;
typedef int gfp_t ;


 int sk_alloc_security (struct sock*,int,int ) ;

__attribute__((used)) static int selinux_sk_alloc_security(struct sock *sk, int family, gfp_t priority)
{
 return sk_alloc_security(sk, family, priority);
}
