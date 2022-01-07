
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ulist {scalar_t__ nodes_alloced; int nodes; } ;


 scalar_t__ ULIST_SIZE ;
 int kfree (int ) ;

void ulist_fini(struct ulist *ulist)
{




 if (ulist->nodes_alloced > ULIST_SIZE)
  kfree(ulist->nodes);
 ulist->nodes_alloced = 0;
}
