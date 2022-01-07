
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct gxt4500_par {int pixfmt; } ;
struct fb_info {unsigned int* pseudo_palette; struct gxt4500_par* par; } ;


 scalar_t__ CMAP ;




 int DFA_PIX_8BIT ;
 int writereg (struct gxt4500_par*,scalar_t__,unsigned int) ;

__attribute__((used)) static int gxt4500_setcolreg(unsigned int reg, unsigned int red,
        unsigned int green, unsigned int blue,
        unsigned int transp, struct fb_info *info)
{
 u32 cmap_entry;
 struct gxt4500_par *par = info->par;

 if (reg > 1023)
  return 1;
 cmap_entry = ((transp & 0xff00) << 16) | ((red & 0xff00) << 8) |
  (green & 0xff00) | (blue >> 8);
 writereg(par, CMAP + reg * 4, cmap_entry);

 if (reg < 16 && par->pixfmt != DFA_PIX_8BIT) {
  u32 *pal = info->pseudo_palette;
  u32 val = reg;
  switch (par->pixfmt) {
  case 130:
   val |= (reg << 11) | (reg << 6);
   break;
  case 131:
   val |= (reg << 10) | (reg << 5);
   break;
  case 128:
   val |= (reg << 24);

  case 129:
   val |= (reg << 16) | (reg << 8);
   break;
  }
  pal[reg] = val;
 }

 return 0;
}
