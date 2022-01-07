
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kcore_list {unsigned long addr; size_t size; int type; int list; } ;


 int kclist_head ;
 int kclist_lock ;
 int list_add_tail (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

void
kclist_add(struct kcore_list *new, void *addr, size_t size, int type)
{
 new->addr = (unsigned long)addr;
 new->size = size;
 new->type = type;

 write_lock(&kclist_lock);
 list_add_tail(&new->list, &kclist_head);
 write_unlock(&kclist_lock);
}
