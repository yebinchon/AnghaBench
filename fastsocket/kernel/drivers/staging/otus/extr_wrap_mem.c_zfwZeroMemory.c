
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;


 int memset (int *,int ,int ) ;

void zfwZeroMemory(u8_t* va, u16_t length)
{

    memset(va, 0, length);




    return;
}
