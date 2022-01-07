
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_platform_parameters {int virt_start; } ;
struct hyp_sysfs_attr {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HYPERVISOR_xen_version (int ,struct xen_platform_parameters*) ;
 int XENVER_platform_parameters ;
 int kfree (struct xen_platform_parameters*) ;
 struct xen_platform_parameters* kmalloc (int,int ) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static ssize_t virtual_start_show(struct hyp_sysfs_attr *attr, char *buffer)
{
 int ret = -ENOMEM;
 struct xen_platform_parameters *parms;

 parms = kmalloc(sizeof(struct xen_platform_parameters), GFP_KERNEL);
 if (parms) {
  ret = HYPERVISOR_xen_version(XENVER_platform_parameters,
          parms);
  if (!ret)
   ret = sprintf(buffer, "%lx\n", parms->virt_start);
  kfree(parms);
 }

 return ret;
}
