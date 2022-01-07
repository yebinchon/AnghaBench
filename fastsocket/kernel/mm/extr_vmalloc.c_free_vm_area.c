
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int addr; } ;


 int BUG_ON (int) ;
 int kfree (struct vm_struct*) ;
 struct vm_struct* remove_vm_area (int ) ;

void free_vm_area(struct vm_struct *area)
{
 struct vm_struct *ret;
 ret = remove_vm_area(area->addr);
 BUG_ON(ret != area);
 kfree(area);
}
