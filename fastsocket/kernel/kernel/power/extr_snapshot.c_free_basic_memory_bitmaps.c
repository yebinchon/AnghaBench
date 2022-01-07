
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;


 int BUG_ON (int) ;
 int PG_UNSAFE_CLEAR ;
 struct memory_bitmap* forbidden_pages_map ;
 struct memory_bitmap* free_pages_map ;
 int kfree (struct memory_bitmap*) ;
 int memory_bm_free (struct memory_bitmap*,int ) ;
 int pr_debug (char*) ;

void free_basic_memory_bitmaps(void)
{
 struct memory_bitmap *bm1, *bm2;

 BUG_ON(!(forbidden_pages_map && free_pages_map));

 bm1 = forbidden_pages_map;
 bm2 = free_pages_map;
 forbidden_pages_map = ((void*)0);
 free_pages_map = ((void*)0);
 memory_bm_free(bm1, PG_UNSAFE_CLEAR);
 kfree(bm1);
 memory_bm_free(bm2, PG_UNSAFE_CLEAR);
 kfree(bm2);

 pr_debug("PM: Basic memory bitmaps freed\n");
}
