
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfp_t ;


 void* alloc_buffer_head (int ) ;

__attribute__((used)) static void *gfs2_bh_alloc(gfp_t mask, void *data)
{
 return alloc_buffer_head(mask);
}
