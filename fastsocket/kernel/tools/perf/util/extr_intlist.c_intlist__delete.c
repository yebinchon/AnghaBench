
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intlist {int rblist; } ;


 int rblist__delete (int *) ;

void intlist__delete(struct intlist *ilist)
{
 if (ilist != ((void*)0))
  rblist__delete(&ilist->rblist);
}
