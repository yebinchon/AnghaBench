
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;



u32_t zfGetU32t(u8_t* p)
{
    u32_t res=0;
    u16_t i;

    for( i=0; i<4; i++ )
    {
        res |= (*p++) << (8*i);
    }

    return res;

}
