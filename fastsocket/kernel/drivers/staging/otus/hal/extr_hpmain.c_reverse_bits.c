
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;



u32_t reverse_bits(u32_t chan_sel)
{

    u32_t chansel = 0;
 u8_t i;

 for (i=0; i<8; i++)
        chansel |= ((chan_sel>>(7-i) & 0x1) << i);
 return chansel;
}
