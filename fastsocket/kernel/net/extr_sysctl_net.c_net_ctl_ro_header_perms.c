
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int net_ns; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table {int mode; } ;


 int init_net ;
 scalar_t__ net_eq (int ,int *) ;

__attribute__((used)) static int net_ctl_ro_header_perms(struct ctl_table_root *root,
  struct nsproxy *namespaces, struct ctl_table *table)
{
 if (net_eq(namespaces->net_ns, &init_net))
  return table->mode;
 else
  return table->mode & ~0222;
}
