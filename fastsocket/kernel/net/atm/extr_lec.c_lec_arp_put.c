
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_arp_table {int usage; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kfree (struct lec_arp_table*) ;

__attribute__((used)) static inline void lec_arp_put(struct lec_arp_table *entry)
{
 if (atomic_dec_and_test(&entry->usage))
  kfree(entry);
}
