
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _ps_strings {scalar_t__ val; } ;
typedef int _ps ;
typedef void* CORE_ADDR ;


 int CTL_VM ;
 int VM_PSSTRINGS ;
 void* i386obsd_sigtramp_end_addr ;
 void* i386obsd_sigtramp_start_addr ;
 scalar_t__ sysctl (int*,int,struct _ps_strings*,size_t*,int *,int ) ;

void
_initialize_i386obsd_nat (void)
{
}
