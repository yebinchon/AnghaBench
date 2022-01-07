
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
typedef int u16_t ;


 int FALSE ;
 int TRUE ;
 int memcmp (int *,int *,int ) ;

u8_t zfwMemoryIsEqual(u8_t* m1, u8_t* m2, u16_t length)
{

    int ret;

    ret = memcmp(m1, m2, length);

    return ((ret==0)?TRUE:FALSE);
}
