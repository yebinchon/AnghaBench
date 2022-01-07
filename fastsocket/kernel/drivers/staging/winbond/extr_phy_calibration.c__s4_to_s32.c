
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int BIT (int) ;

s32 _s4_to_s32(u32 data)
{
    s32 val;

    val = (data & 0x0007);

    if ((data & BIT(3)) != 0)
    {
        val |= 0xFFFFFFF8;
    }

    return val;
}
