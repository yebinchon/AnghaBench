
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s32 ;



s32 _floor(s32 n)
{
    if (n > 0)
    {
        n += 5;
    }
    else
    {
        n -= 5;
    }

    return (n/10);
}
