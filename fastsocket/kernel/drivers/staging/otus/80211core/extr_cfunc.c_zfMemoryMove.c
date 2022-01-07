
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;


 int zfwMemoryMove (int *,int *,int ) ;

void zfMemoryMove(u8_t* dst, u8_t* src, u16_t length)
{
    zfwMemoryMove(dst, src, length);
}
