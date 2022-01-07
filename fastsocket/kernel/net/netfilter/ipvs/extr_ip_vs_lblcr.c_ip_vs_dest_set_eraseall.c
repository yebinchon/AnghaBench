
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_dest_set {int lock; struct ip_vs_dest_list* list; } ;
struct ip_vs_dest_list {TYPE_1__* dest; struct ip_vs_dest_list* next; } ;
struct TYPE_2__ {int refcnt; } ;


 int atomic_dec (int *) ;
 int kfree (struct ip_vs_dest_list*) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void ip_vs_dest_set_eraseall(struct ip_vs_dest_set *set)
{
 struct ip_vs_dest_list *e, **ep;

 write_lock(&set->lock);
 for (ep=&set->list, e=*ep; e!=((void*)0); e=*ep) {
  *ep = e->next;




  atomic_dec(&e->dest->refcnt);
  kfree(e);
 }
 write_unlock(&set->lock);
}
