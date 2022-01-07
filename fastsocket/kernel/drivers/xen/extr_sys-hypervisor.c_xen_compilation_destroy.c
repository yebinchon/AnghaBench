
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hypervisor_kobj ;
 int sysfs_remove_group (int ,int *) ;
 int xen_compilation_group ;

__attribute__((used)) static void xen_compilation_destroy(void)
{
 sysfs_remove_group(hypervisor_kobj, &xen_compilation_group);
}
