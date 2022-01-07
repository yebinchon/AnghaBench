
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;



u32 _s32_to_s13(s32 data)
{
    u32 val;

    if (data > 4095)
    {
        data = 4095;
    }
    else if (data < -4096)
    {
        data = -4096;
    }

    val = data & 0x1FFF;

    return val;
}
