
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct epson1355_par {int dummy; } ;


 int REG_DISPLAY_MODE ;
 int epson1355_read_reg (struct epson1355_par*,int ) ;
 int epson1355_write_reg (struct epson1355_par*,int,int ) ;

__attribute__((used)) static void lcd_enable(struct epson1355_par *par, int enable)
{
 u8 mode = epson1355_read_reg(par, REG_DISPLAY_MODE);

 if (enable)
  mode |= 1;
 else
  mode &= ~1;

 epson1355_write_reg(par, mode, REG_DISPLAY_MODE);
}
