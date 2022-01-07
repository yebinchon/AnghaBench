
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hyp_sysfs_attr {int dummy; } ;
typedef int ssize_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HYPERVISOR_xen_version (int ,char*) ;
 int XENVER_changeset ;
 int XEN_CHANGESET_INFO_LEN ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;
 int sprintf (char*,char*,char*) ;

__attribute__((used)) static ssize_t changeset_show(struct hyp_sysfs_attr *attr, char *buffer)
{
 int ret = -ENOMEM;
 char *cset;

 cset = kmalloc(XEN_CHANGESET_INFO_LEN, GFP_KERNEL);
 if (cset) {
  ret = HYPERVISOR_xen_version(XENVER_changeset, cset);
  if (!ret)
   ret = sprintf(buffer, "%s\n", cset);
  kfree(cset);
 }

 return ret;
}
