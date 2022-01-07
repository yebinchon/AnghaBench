
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
struct vm_struct {void* addr; scalar_t__ phys_addr; struct vm_struct* next; } ;
struct gnttab_unmap_grant_ref {unsigned long host_addr; int status; scalar_t__ handle; } ;
typedef int int16_t ;
typedef scalar_t__ grant_handle_t ;


 int BUG () ;
 int ENOENT ;
 int GNTST_bad_virt_addr ;
 int GNTST_okay ;
 int GNTTABOP_unmap_grant_ref ;
 scalar_t__ HYPERVISOR_grant_table_op (int ,struct gnttab_unmap_grant_ref*,int) ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct vm_struct* vmlist ;
 int vmlist_lock ;
 int xen_free_vm_area (struct vm_struct*) ;
 int xenbus_dev_error (struct xenbus_device*,int,char*,void*,...) ;

int xenbus_unmap_ring_vfree(struct xenbus_device *dev, void *vaddr)
{
 struct vm_struct *area;
 struct gnttab_unmap_grant_ref op = {
  .host_addr = (unsigned long)vaddr,
 };







 read_lock(&vmlist_lock);
 for (area = vmlist; area != ((void*)0); area = area->next) {
  if (area->addr == vaddr)
   break;
 }
 read_unlock(&vmlist_lock);

 if (!area) {
  xenbus_dev_error(dev, -ENOENT,
     "can't find mapped virtual address %p", vaddr);
  return GNTST_bad_virt_addr;
 }

 op.handle = (grant_handle_t)area->phys_addr;

 if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, &op, 1))
  BUG();

 if (op.status == GNTST_okay)
  xen_free_vm_area(area);
 else
  xenbus_dev_error(dev, op.status,
     "unmapping page at handle %d error %d",
     (int16_t)area->phys_addr, op.status);

 return op.status;
}
