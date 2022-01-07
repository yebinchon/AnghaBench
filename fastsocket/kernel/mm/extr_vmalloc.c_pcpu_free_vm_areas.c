
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_struct {int dummy; } ;


 int free_vm_area (struct vm_struct*) ;
 int kfree (struct vm_struct**) ;

void pcpu_free_vm_areas(struct vm_struct **vms, int nr_vms)
{
 int i;

 for (i = 0; i < nr_vms; i++)
  free_vm_area(vms[i]);
 kfree(vms);
}
