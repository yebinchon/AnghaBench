
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct dso {int node; } ;


 int list_add_tail (int *,struct list_head*) ;

void dsos__add(struct list_head *head, struct dso *dso)
{
 list_add_tail(&dso->node, head);
}
