
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm3_par {int dummy; } ;


 int PM3RD_PaletteData ;
 int PM3RD_PaletteWriteAddress ;
 int PM3_WAIT (struct pm3_par*,int) ;
 int PM3_WRITE_REG (struct pm3_par*,int ,unsigned char) ;
 int wmb () ;

__attribute__((used)) static inline void pm3fb_set_color(struct pm3_par *par, unsigned char regno,
   unsigned char r, unsigned char g, unsigned char b)
{
 PM3_WAIT(par, 4);
 PM3_WRITE_REG(par, PM3RD_PaletteWriteAddress, regno);
 wmb();
 PM3_WRITE_REG(par, PM3RD_PaletteData, r);
 wmb();
 PM3_WRITE_REG(par, PM3RD_PaletteData, g);
 wmb();
 PM3_WRITE_REG(par, PM3RD_PaletteData, b);
 wmb();
}
