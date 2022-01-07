
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct dum_ch_setup {scalar_t__ xmin; scalar_t__ xmax; } ;



__attribute__((used)) static u32 nof_pixels_dx(struct dum_ch_setup *ch_setup)
{
 return (ch_setup->xmax - ch_setup->xmin + 1);
}
