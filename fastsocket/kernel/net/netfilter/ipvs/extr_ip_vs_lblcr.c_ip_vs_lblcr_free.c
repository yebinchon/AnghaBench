
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_lblcr_entry {int set; int list; } ;


 int ip_vs_dest_set_eraseall (int *) ;
 int kfree (struct ip_vs_lblcr_entry*) ;
 int list_del (int *) ;

__attribute__((used)) static inline void ip_vs_lblcr_free(struct ip_vs_lblcr_entry *en)
{
 list_del(&en->list);
 ip_vs_dest_set_eraseall(&en->set);
 kfree(en);
}
