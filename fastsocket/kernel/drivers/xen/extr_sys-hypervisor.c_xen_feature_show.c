
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xen_feature_info {int submap_idx; int submap; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ HYPERVISOR_xen_version (int ,struct xen_feature_info*) ;
 int XENVER_get_features ;
 scalar_t__ sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t xen_feature_show(int index, char *buffer)
{
 ssize_t ret;
 struct xen_feature_info info;

 info.submap_idx = index;
 ret = HYPERVISOR_xen_version(XENVER_get_features, &info);
 if (!ret)
  ret = sprintf(buffer, "%08x", info.submap);

 return ret;
}
