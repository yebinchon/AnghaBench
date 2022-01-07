
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ atomic_read (int *) ;
 int selinux_secmark_refcount ;

__attribute__((used)) static int selinux_secmark_enabled(void)
{
 return (atomic_read(&selinux_secmark_refcount) > 0);
}
