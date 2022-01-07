
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table_header {int dummy; } ;
struct ctl_table {int dummy; } ;
struct ctl_path {int dummy; } ;



struct ctl_table_header *register_sysctl_paths(const struct ctl_path *path,
          struct ctl_table *table)
{
 return ((void*)0);
}
