
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int LUT_DATA ;
 int LUT_INDEX_WRITE ;
 int outb (int ,int ) ;

void write_dac_reg(u8 index, u8 r, u8 g, u8 b)
{
 outb(index, LUT_INDEX_WRITE);
 outb(r, LUT_DATA);
 outb(g, LUT_DATA);
 outb(b, LUT_DATA);
}
