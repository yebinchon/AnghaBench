
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16_t ;



u16_t zfrotr1(u16_t a)

{
    u16_t b;

    if (a & 0x01)
    {
        b = (a >> 1) | 0x8000;
    }
    else
    {
        b = (a >> 1) & 0x7fff;
    }
    return b;
}
