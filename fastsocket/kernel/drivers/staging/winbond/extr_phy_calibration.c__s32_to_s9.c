
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;



u32 _s32_to_s9(s32 data)
{
    u32 val;

    if (data > 255)
    {
        data = 255;
    }
    else if (data < -256)
    {
        data = -256;
    }

    val = data & 0x01FF;

    return val;
}
