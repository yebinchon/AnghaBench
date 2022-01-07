
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest_set {int lastmod; int size; struct ip_vs_dest_list* list; } ;
struct ip_vs_dest_list {struct ip_vs_dest_list* next; struct ip_vs_dest* dest; } ;
struct ip_vs_dest {int refcnt; } ;


 int atomic_dec (int *) ;
 int jiffies ;
 int kfree (struct ip_vs_dest_list*) ;

__attribute__((used)) static void
ip_vs_dest_set_erase(struct ip_vs_dest_set *set, struct ip_vs_dest *dest)
{
 struct ip_vs_dest_list *e, **ep;

 for (ep=&set->list, e=*ep; e!=((void*)0); e=*ep) {
  if (e->dest == dest) {

   *ep = e->next;
   atomic_dec(&set->size);
   set->lastmod = jiffies;
   atomic_dec(&e->dest->refcnt);
   kfree(e);
   break;
  }
  ep = &e->next;
 }
}
