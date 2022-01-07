
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_queue_head_t ;
struct zone {int wait_table_bits; int * wait_table; } ;


 int BITS_PER_LONG ;
 size_t hash_long (unsigned long,int ) ;
 struct zone* page_zone (int ) ;
 int virt_to_page (void*) ;

wait_queue_head_t *bit_waitqueue(void *word, int bit)
{
 const int shift = BITS_PER_LONG == 32 ? 5 : 6;
 const struct zone *zone = page_zone(virt_to_page(word));
 unsigned long val = (unsigned long)word << shift | bit;

 return &zone->wait_table[hash_long(val, zone->wait_table_bits)];
}
