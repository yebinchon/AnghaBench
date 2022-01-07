
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int otherend_id; } ;
struct vm_struct {unsigned long phys_addr; void* addr; } ;
struct gnttab_map_grant_ref {int ref; unsigned long host_addr; scalar_t__ status; scalar_t__ handle; int dom; int flags; } ;


 int BUG () ;
 int ENOMEM ;
 int GNTMAP_host_map ;
 scalar_t__ GNTST_okay ;
 int GNTTABOP_map_grant_ref ;
 scalar_t__ HYPERVISOR_grant_table_op (int ,struct gnttab_map_grant_ref*,int) ;
 int PAGE_SIZE ;
 struct vm_struct* xen_alloc_vm_area (int ) ;
 int xen_free_vm_area (struct vm_struct*) ;
 int xenbus_dev_fatal (struct xenbus_device*,scalar_t__,char*,int,int ) ;

int xenbus_map_ring_valloc(struct xenbus_device *dev, int gnt_ref, void **vaddr)
{
 struct gnttab_map_grant_ref op = {
  .flags = GNTMAP_host_map,
  .ref = gnt_ref,
  .dom = dev->otherend_id,
 };
 struct vm_struct *area;

 *vaddr = ((void*)0);

 area = xen_alloc_vm_area(PAGE_SIZE);
 if (!area)
  return -ENOMEM;

 op.host_addr = (unsigned long)area->addr;

 if (HYPERVISOR_grant_table_op(GNTTABOP_map_grant_ref, &op, 1))
  BUG();

 if (op.status != GNTST_okay) {
  xen_free_vm_area(area);
  xenbus_dev_fatal(dev, op.status,
     "mapping in shared page %d from domain %d",
     gnt_ref, dev->otherend_id);
  return op.status;
 }


 area->phys_addr = (unsigned long)op.handle;

 *vaddr = area->addr;
 return 0;
}
