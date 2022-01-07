
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32_t ;



s32_t zfInterpolateFunc(s32_t x, s32_t x1, s32_t y1, s32_t x2, s32_t y2)
{
    s32_t y;

    if (y2 == y1)
    {
        y = y1;
    }
    else if (x == x1)
    {
        y = y1;
    }
    else if (x == x2)
    {
        y = y2;
    }
    else if (x2 != x1)
    {
        y = y1 + (((y2-y1) * (x-x1))/(x2-x1));
    }
    else
    {
        y = y1;
    }

    return y;
}
