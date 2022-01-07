
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;



u32 _s32_to_s6(s32 data)
{
    u32 val;

    if (data > 31)
    {
        data = 31;
    }
    else if (data < -32)
    {
        data = -32;
    }

    val = data & 0x003F;

    return val;
}
