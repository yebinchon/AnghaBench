
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int s16 ;



__attribute__((used)) static inline int sca3000_13bit_convert(uint8_t msb, uint8_t lsb)
{
 s16 val;

 val = ((lsb >> 3) & 0x1F) | (msb << 5);

 val |= (val & (1 << 12)) ? 0xE000 : 0;

 return val;
}
