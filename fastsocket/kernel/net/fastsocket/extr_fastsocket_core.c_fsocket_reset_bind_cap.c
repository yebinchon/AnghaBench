
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cred {int cap_effective; } ;
typedef int kernel_cap_t ;


 scalar_t__ current_cred () ;

__attribute__((used)) static void fsocket_reset_bind_cap(kernel_cap_t *p)
{
 struct cred *old;

 old = (struct cred *)current_cred();
 old->cap_effective = *p;
}
