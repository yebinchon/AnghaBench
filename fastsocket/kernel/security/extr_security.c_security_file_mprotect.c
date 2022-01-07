
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int (* file_mprotect ) (struct vm_area_struct*,unsigned long,unsigned long) ;} ;


 TYPE_1__* security_ops ;
 int stub1 (struct vm_area_struct*,unsigned long,unsigned long) ;

int security_file_mprotect(struct vm_area_struct *vma, unsigned long reqprot,
       unsigned long prot)
{
 return security_ops->file_mprotect(vma, reqprot, prot);
}
