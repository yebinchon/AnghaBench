
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int __GFP_ZERO ;
 unsigned long __get_free_pages (int,int ) ;

unsigned long get_zeroed_page(gfp_t gfp_mask)
{
 return __get_free_pages(gfp_mask | __GFP_ZERO, 0);
}
