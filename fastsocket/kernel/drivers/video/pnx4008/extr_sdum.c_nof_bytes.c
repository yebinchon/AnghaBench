
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dum_ch_setup {int format; } ;




 int nof_pixels_dxy (struct dum_ch_setup*) ;

__attribute__((used)) static u32 nof_bytes(struct dum_ch_setup *ch_setup)
{
 u32 r = nof_pixels_dxy(ch_setup);
 switch (ch_setup->format) {
 case 128:
 case 129:
  r *= 4;
  break;

 default:
  r *= 2;
  break;
 }
 return r;
}
