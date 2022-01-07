
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fb_var_screeninfo {int yoffset; int xres_virtual; int xoffset; int bits_per_pixel; } ;
struct cfb_info {int dummy; } ;


 int EINVAL ;
 int cyber2000_crtcw (int,int,struct cfb_info*) ;
 int cyber2000_grphw (int,int,struct cfb_info*) ;

__attribute__((used)) static inline int
cyber2000fb_update_start(struct cfb_info *cfb, struct fb_var_screeninfo *var)
{
 u_int base = var->yoffset * var->xres_virtual + var->xoffset;

 base *= var->bits_per_pixel;





 base >>= 5;

 if (base >= 1 << 20)
  return -EINVAL;

 cyber2000_grphw(0x10, base >> 16 | 0x10, cfb);
 cyber2000_crtcw(0x0c, base >> 8, cfb);
 cyber2000_crtcw(0x0d, base, cfb);

 return 0;
}
