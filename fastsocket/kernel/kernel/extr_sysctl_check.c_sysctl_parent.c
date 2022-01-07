
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table {struct ctl_table* parent; } ;



__attribute__((used)) static struct ctl_table *sysctl_parent(struct ctl_table *table, int n)
{
 int i;

 for (i = 0; table && i < n; i++)
  table = table->parent;

 return table;
}
