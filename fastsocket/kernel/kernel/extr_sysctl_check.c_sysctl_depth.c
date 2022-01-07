
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_table {struct ctl_table* parent; } ;



__attribute__((used)) static int sysctl_depth(struct ctl_table *table)
{
 struct ctl_table *tmp;
 int depth;

 depth = 0;
 for (tmp = table; tmp->parent; tmp = tmp->parent)
  depth++;

 return depth;
}
