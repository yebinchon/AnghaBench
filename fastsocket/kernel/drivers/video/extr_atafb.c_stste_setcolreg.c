
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fb_info {int dummy; } ;
struct TYPE_2__ {unsigned int* color_reg; } ;


 scalar_t__ ATARIHW_PRESENT (int ) ;
 int EXTD_SHIFTER ;
 TYPE_1__ shifter_tt ;

__attribute__((used)) static int stste_setcolreg(unsigned int regno, unsigned int red,
      unsigned int green, unsigned int blue,
      unsigned int transp, struct fb_info *info)
{
 if (regno > 15)
  return 1;
 red >>= 12;
 blue >>= 12;
 green >>= 12;
 if (ATARIHW_PRESENT(EXTD_SHIFTER))
  shifter_tt.color_reg[regno] =
   (((red & 0xe) >> 1) | ((red & 1) << 3) << 8) |
   (((green & 0xe) >> 1) | ((green & 1) << 3) << 4) |
   ((blue & 0xe) >> 1) | ((blue & 1) << 3);
 else
  shifter_tt.color_reg[regno] =
   ((red & 0xe) << 7) |
   ((green & 0xe) << 3) |
   ((blue & 0xe) >> 1);
 return 0;
}
