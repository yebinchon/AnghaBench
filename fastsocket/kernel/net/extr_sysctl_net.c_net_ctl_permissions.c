
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nsproxy {int dummy; } ;
struct ctl_table_root {int dummy; } ;
struct ctl_table {int mode; } ;


 int CAP_NET_ADMIN ;
 scalar_t__ capable (int ) ;

__attribute__((used)) static int net_ctl_permissions(struct ctl_table_root *root,
          struct nsproxy *nsproxy,
          struct ctl_table *table)
{

 if (capable(CAP_NET_ADMIN)) {
  int mode = (table->mode >> 6) & 7;
  return (mode << 6) | (mode << 3) | mode;
 }
 return table->mode;
}
