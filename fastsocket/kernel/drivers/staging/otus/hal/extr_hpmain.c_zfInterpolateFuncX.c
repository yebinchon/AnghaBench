
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8_t ;
typedef int s32_t ;


 int ZM_MULTIPLIER ;
 int zfInterpolateFunc (int,int,int,int,int) ;

u8_t zfInterpolateFuncX(u8_t x, u8_t x1, u8_t y1, u8_t x2, u8_t y2)
{
    s32_t y;
    s32_t inc;


    y = zfInterpolateFunc((s32_t)x<<8,
                          (s32_t)x1<<8,
                          (s32_t)y1<<8,
                          (s32_t)x2<<8,
                          (s32_t)y2<<8);

    inc = (y & (1<<(8 -1))) >> (8 -1);
    y = (y >> 8) + inc;


    return (u8_t)y;
}
