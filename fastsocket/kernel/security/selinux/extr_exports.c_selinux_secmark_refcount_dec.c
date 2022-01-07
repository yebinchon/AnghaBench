
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_dec (int *) ;
 int selinux_secmark_refcount ;

void selinux_secmark_refcount_dec(void)
{
 atomic_dec(&selinux_secmark_refcount);
}
