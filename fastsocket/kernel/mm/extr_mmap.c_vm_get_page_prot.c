
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pgprot_t ;


 unsigned long VM_EXEC ;
 unsigned long VM_READ ;
 unsigned long VM_SHARED ;
 unsigned long VM_WRITE ;
 int __pgprot (int) ;
 int arch_vm_get_page_prot (unsigned long) ;
 int pgprot_val (int ) ;
 int * protection_map ;

pgprot_t vm_get_page_prot(unsigned long vm_flags)
{
 return __pgprot(pgprot_val(protection_map[vm_flags &
    (VM_READ|VM_WRITE|VM_EXEC|VM_SHARED)]) |
   pgprot_val(arch_vm_get_page_prot(vm_flags)));
}
