
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct epson1355_par {int dummy; } ;


 int epson1355_write_reg (struct epson1355_par*,int,int) ;

__attribute__((used)) static inline void epson1355_write_reg20(struct epson1355_par *par, u32 data, int index)
{
 u8 b0 = data & 0xff;
 u8 b1 = (data >> 8) & 0xff;
 u8 b2 = (data >> 16) & 0x0f;

 epson1355_write_reg(par, b0, index);
 epson1355_write_reg(par, b1, index + 1);
 epson1355_write_reg(par, b2, index + 2);
}
