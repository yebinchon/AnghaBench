
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenstore_domain_interface {scalar_t__ rsp_cons; scalar_t__ rsp_prod; } ;


 struct xenstore_domain_interface* xen_store_interface ;

int xb_data_to_read(void)
{
 struct xenstore_domain_interface *intf = xen_store_interface;
 return (intf->rsp_cons != intf->rsp_prod);
}
