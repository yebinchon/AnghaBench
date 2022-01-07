
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef int u32_t ;
typedef int u16_t ;



void zfPutU32t(u8_t* p, u32_t value)
{
    u16_t i;

    for(i=0; i<4; i++)
    {
        *p++ = (u8_t) (value & 0xff);
        value >>= 8;
    }
}
