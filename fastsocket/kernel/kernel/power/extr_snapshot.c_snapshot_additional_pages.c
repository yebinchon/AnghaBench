
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {unsigned int spanned_pages; } ;
struct bm_block {int dummy; } ;


 int BM_BITS_PER_BLOCK ;
 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int PAGE_SIZE ;

unsigned int snapshot_additional_pages(struct zone *zone)
{
 unsigned int res;

 res = DIV_ROUND_UP(zone->spanned_pages, BM_BITS_PER_BLOCK);
 res += DIV_ROUND_UP(res * sizeof(struct bm_block), PAGE_SIZE);
 return 2 * res;
}
