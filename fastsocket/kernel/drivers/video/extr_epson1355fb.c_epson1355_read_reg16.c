
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct epson1355_par {int dummy; } ;


 int epson1355_read_reg (struct epson1355_par*,int) ;

__attribute__((used)) static inline u16 epson1355_read_reg16(struct epson1355_par *par, int index)
{
 u8 lo = epson1355_read_reg(par, index);
 u8 hi = epson1355_read_reg(par, index + 1);

 return (hi << 8) | lo;
}
