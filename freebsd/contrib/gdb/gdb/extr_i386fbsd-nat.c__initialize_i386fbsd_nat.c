
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_long ;
typedef int ps_strings ;


 int CTL_KERN ;
 int KERN_PS_STRINGS ;
 void* i386fbsd_sigtramp_end_addr ;
 void* i386fbsd_sigtramp_start_addr ;
 scalar_t__ sysctl (int*,int,void**,size_t*,int *,int ) ;

void
_initialize_i386fbsd_nat (void)
{
}
