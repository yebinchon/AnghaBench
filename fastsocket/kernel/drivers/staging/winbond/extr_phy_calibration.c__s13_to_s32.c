
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int s32 ;


 int BIT (int) ;

s32 _s13_to_s32(u32 data)
{
    u32 val;

    val = (data & 0x0FFF);

    if ((data & BIT(12)) != 0)
    {
        val |= 0xFFFFF000;
    }

    return ((s32) val);
}
