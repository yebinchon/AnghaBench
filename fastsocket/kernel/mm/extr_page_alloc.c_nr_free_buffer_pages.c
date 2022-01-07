
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GFP_USER ;
 int gfp_zone (int ) ;
 unsigned int nr_free_zone_pages (int ) ;

unsigned int nr_free_buffer_pages(void)
{
 return nr_free_zone_pages(gfp_zone(GFP_USER));
}
