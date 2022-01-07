
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 int PG_SAFE ;
 scalar_t__ get_image_page (int ,int ) ;

unsigned long get_safe_page(gfp_t gfp_mask)
{
 return (unsigned long)get_image_page(gfp_mask, PG_SAFE);
}
