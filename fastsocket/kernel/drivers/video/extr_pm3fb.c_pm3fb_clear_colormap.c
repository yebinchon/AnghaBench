
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm3_par {int dummy; } ;


 int pm3fb_set_color (struct pm3_par*,int,unsigned char,unsigned char,unsigned char) ;

__attribute__((used)) static void pm3fb_clear_colormap(struct pm3_par *par,
   unsigned char r, unsigned char g, unsigned char b)
{
 int i;

 for (i = 0; i < 256 ; i++)
  pm3fb_set_color(par, i, r, g, b);

}
