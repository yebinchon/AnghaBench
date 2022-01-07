
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MUX (int,int,int ) ;

uint32_t
br_i32_ninv32(uint32_t x)
{
 uint32_t y;

 y = 2 - x;
 y *= 2 - y * x;
 y *= 2 - y * x;
 y *= 2 - y * x;
 y *= 2 - y * x;
 return MUX(x & 1, -y, 0);
}
