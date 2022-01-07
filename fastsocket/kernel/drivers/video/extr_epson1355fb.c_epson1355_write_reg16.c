
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct epson1355_par {int dummy; } ;


 int epson1355_write_reg (struct epson1355_par*,int,int) ;

__attribute__((used)) static inline void epson1355_write_reg16(struct epson1355_par *par, u16 data, int index)
{
 u8 lo = data & 0xff;
 u8 hi = (data >> 8) & 0xff;

 epson1355_write_reg(par, lo, index);
 epson1355_write_reg(par, hi, index + 1);
}
