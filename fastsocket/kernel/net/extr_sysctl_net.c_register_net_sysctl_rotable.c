
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;
struct ctl_path {int dummy; } ;


 struct ctl_table_header* __register_sysctl_paths (int *,int *,struct ctl_path const*,struct ctl_table*) ;
 int init_nsproxy ;
 int net_sysctl_ro_root ;

struct ctl_table_header *register_net_sysctl_rotable(const
  struct ctl_path *path, struct ctl_table *table)
{
 return __register_sysctl_paths(&net_sysctl_ro_root,
   &init_nsproxy, path, table);
}
