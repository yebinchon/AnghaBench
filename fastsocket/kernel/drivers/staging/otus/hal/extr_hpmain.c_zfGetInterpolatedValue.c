
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef size_t u16_t ;
typedef int s32_t ;


 int zfInterpolateFuncX (int ,int ,int ,int ,int ) ;

u8_t zfGetInterpolatedValue(u8_t x, u8_t* x_array, u8_t* y_array)
{
    s32_t y;
    u16_t xIndex;

    if (x <= x_array[1])
    {
        xIndex = 0;
    }
    else if (x <= x_array[2])
    {
        xIndex = 1;
    }
    else if (x <= x_array[3])
    {
        xIndex = 2;
    }
    else
    {
        xIndex = 3;
    }

    y = zfInterpolateFuncX(x,
            x_array[xIndex],
            y_array[xIndex],
            x_array[xIndex+1],
            y_array[xIndex+1]);

    return (u8_t)y;
}
