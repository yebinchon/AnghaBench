
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dentry {int dummy; } ;
struct cpu_vfs_cap_data {int dummy; } ;


 int ENODATA ;
 int memset (struct cpu_vfs_cap_data*,int ,int) ;

int get_vfs_caps_from_disk(const struct dentry *dentry, struct cpu_vfs_cap_data *cpu_caps)
{
 memset(cpu_caps, 0, sizeof(struct cpu_vfs_cap_data));
  return -ENODATA;
}
