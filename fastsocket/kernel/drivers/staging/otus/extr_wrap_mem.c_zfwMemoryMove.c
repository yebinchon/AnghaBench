
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;


 int memcpy (int *,int *,int ) ;

void zfwMemoryMove(u8_t* dst, u8_t* src, u16_t length)
{
    memcpy(dst, src, length);
    return;
}
