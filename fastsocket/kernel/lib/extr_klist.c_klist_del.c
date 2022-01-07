
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {int dummy; } ;


 int klist_put (struct klist_node*,int) ;

void klist_del(struct klist_node *n)
{
 klist_put(n, 1);
}
