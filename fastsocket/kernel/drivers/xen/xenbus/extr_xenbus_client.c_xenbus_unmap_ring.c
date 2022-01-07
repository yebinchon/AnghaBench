
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int dummy; } ;
struct gnttab_unmap_grant_ref {unsigned long host_addr; scalar_t__ status; int handle; } ;
typedef int grant_handle_t ;


 int BUG () ;
 scalar_t__ GNTST_okay ;
 int GNTTABOP_unmap_grant_ref ;
 scalar_t__ HYPERVISOR_grant_table_op (int ,struct gnttab_unmap_grant_ref*,int) ;
 int xenbus_dev_error (struct xenbus_device*,scalar_t__,char*,int ,scalar_t__) ;

int xenbus_unmap_ring(struct xenbus_device *dev,
        grant_handle_t handle, void *vaddr)
{
 struct gnttab_unmap_grant_ref op = {
  .host_addr = (unsigned long)vaddr,
  .handle = handle,
 };

 if (HYPERVISOR_grant_table_op(GNTTABOP_unmap_grant_ref, &op, 1))
  BUG();

 if (op.status != GNTST_okay)
  xenbus_dev_error(dev, op.status,
     "unmapping page at handle %d error %d",
     handle, op.status);

 return op.status;
}
