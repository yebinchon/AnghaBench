
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct epson1355_par {int dummy; } ;


 int REG_LUT_ADDR ;
 int REG_LUT_DATA ;
 int epson1355_write_reg (struct epson1355_par*,int ,int ) ;

__attribute__((used)) static void set_lut(struct epson1355_par *par, u8 index, u8 r, u8 g, u8 b)
{
 epson1355_write_reg(par, index, REG_LUT_ADDR);
 epson1355_write_reg(par, r, REG_LUT_DATA);
 epson1355_write_reg(par, g, REG_LUT_DATA);
 epson1355_write_reg(par, b, REG_LUT_DATA);
}
