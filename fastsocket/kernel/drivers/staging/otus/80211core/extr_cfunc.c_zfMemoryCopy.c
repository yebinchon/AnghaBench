
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;


 int zfwMemoryCopy (int *,int *,int ) ;

void zfMemoryCopy(u8_t* dst, u8_t* src, u16_t length)
{
    zfwMemoryCopy(dst, src, length);
}
