
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fb_var_screeninfo {int bits_per_pixel; } ;



__attribute__((used)) static inline u_int palette_pbs(struct fb_var_screeninfo *var)
{
 int ret = 0;
 switch (var->bits_per_pixel) {
 case 4: ret = 0 << 12; break;
 case 8: ret = 1 << 12; break;
 case 16: ret = 2 << 12; break;
 }
 return ret;
}
