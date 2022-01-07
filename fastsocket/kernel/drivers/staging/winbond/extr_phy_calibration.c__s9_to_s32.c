
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int BIT (int) ;

s32 _s9_to_s32(u32 data)
{
    s32 val;

    val = data & 0x00FF;

    if ((data & BIT(8)) != 0)
    {
        val |= 0xFFFFFF00;
    }

    return val;
}
