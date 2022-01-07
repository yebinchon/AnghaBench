
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lec_arp_table {int usage; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static inline void lec_arp_hold(struct lec_arp_table *entry)
{
 atomic_inc(&entry->usage);
}
