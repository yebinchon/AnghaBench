
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int rblist; } ;


 int rblist__add_node (int *,void*) ;

int intlist__add(struct intlist *ilist, int i)
{
 return rblist__add_node(&ilist->rblist, (void *)((long)i));
}
