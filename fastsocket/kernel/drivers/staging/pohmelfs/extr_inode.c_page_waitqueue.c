
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct zone {int wait_table_bits; int * wait_table; } ;
struct page {int dummy; } ;


 size_t hash_ptr (struct page*,int ) ;
 struct zone* page_zone (struct page*) ;

__attribute__((used)) static inline wait_queue_head_t *page_waitqueue(struct page *page)
{
 const struct zone *zone = page_zone(page);

 return &zone->wait_table[hash_ptr(page, zone->wait_table_bits)];
}
