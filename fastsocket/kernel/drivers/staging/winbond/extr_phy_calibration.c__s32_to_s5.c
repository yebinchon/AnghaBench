
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;



u32 _s32_to_s5(s32 data)
{
    u32 val;

    if (data > 15)
    {
        data = 15;
    }
    else if (data < -16)
    {
        data = -16;
    }

    val = data & 0x001F;

    return val;
}
