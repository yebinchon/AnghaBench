
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_vs_lblc_entry {TYPE_1__* dest; int list; } ;
struct TYPE_2__ {int refcnt; } ;


 int atomic_dec (int *) ;
 int kfree (struct ip_vs_lblc_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void ip_vs_lblc_free(struct ip_vs_lblc_entry *en)
{
 list_del(&en->list);




 atomic_dec(&en->dest->refcnt);
 kfree(en);
}
