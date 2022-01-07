
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 unsigned long BDI_CAP_MAP_DIRECT ;
 unsigned long BDI_CAP_VMFLAGS ;
 unsigned long MAP_PRIVATE ;
 unsigned long MAP_SHARED ;
 unsigned long PROT_WRITE ;
 unsigned long VM_MAYEXEC ;
 unsigned long VM_MAYREAD ;
 unsigned long VM_MAYSHARE ;
 unsigned long VM_MAYWRITE ;
 unsigned long VM_SHARED ;
 unsigned long calc_vm_flag_bits (unsigned long) ;
 unsigned long calc_vm_prot_bits (unsigned long) ;
 int current ;
 scalar_t__ tracehook_expect_breakpoints (int ) ;

__attribute__((used)) static unsigned long determine_vm_flags(struct file *file,
     unsigned long prot,
     unsigned long flags,
     unsigned long capabilities)
{
 unsigned long vm_flags;

 vm_flags = calc_vm_prot_bits(prot) | calc_vm_flag_bits(flags);
 vm_flags |= VM_MAYREAD | VM_MAYWRITE | VM_MAYEXEC;


 if (!(capabilities & BDI_CAP_MAP_DIRECT)) {

  if (file && !(prot & PROT_WRITE))
   vm_flags |= VM_MAYSHARE;
 }
 else {



  if (flags & MAP_SHARED)
   vm_flags |= VM_MAYSHARE | VM_SHARED;
  else if ((((vm_flags & capabilities) ^ vm_flags) & BDI_CAP_VMFLAGS) == 0)
   vm_flags |= VM_MAYSHARE;
 }





 if ((flags & MAP_PRIVATE) && tracehook_expect_breakpoints(current))
  vm_flags &= ~VM_MAYSHARE;

 return vm_flags;
}
