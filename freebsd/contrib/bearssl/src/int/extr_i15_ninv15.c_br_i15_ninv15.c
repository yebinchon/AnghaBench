
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int MUL15 (int,int) ;
 int MUX (int,int,int ) ;

uint16_t
br_i15_ninv15(uint16_t x)
{
 uint32_t y;

 y = 2 - x;
 y = MUL15(y, 2 - MUL15(x, y));
 y = MUL15(y, 2 - MUL15(x, y));
 y = MUL15(y, 2 - MUL15(x, y));
 return MUX(x & 1, -y, 0) & 0x7FFF;
}
