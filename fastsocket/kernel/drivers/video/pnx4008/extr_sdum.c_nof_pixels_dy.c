
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dum_ch_setup {scalar_t__ ymin; scalar_t__ ymax; } ;



__attribute__((used)) static u32 nof_pixels_dy(struct dum_ch_setup *ch_setup)
{
 return (ch_setup->ymax - ch_setup->ymin + 1);
}
