
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct epson1355_par {int dummy; } ;


 int epson1355_read_reg (struct epson1355_par*,int) ;

__attribute__((used)) static inline u32 epson1355_read_reg20(struct epson1355_par *par, int index)
{
 u8 b0 = epson1355_read_reg(par, index);
 u8 b1 = epson1355_read_reg(par, index + 1);
 u8 b2 = epson1355_read_reg(par, index + 2);

 return (b2 & 0x0f) << 16 | (b1 << 8) | b0;
}
