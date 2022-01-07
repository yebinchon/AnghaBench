
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {int dummy; } ;


 int sk_release_kernel (struct sock*) ;

void
netlink_kernel_release(struct sock *sk)
{
 sk_release_kernel(sk);
}
