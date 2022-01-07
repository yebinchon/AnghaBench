
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int u16_t ;


 char const* zfHpGetisoNamefromregionCode (int *,int ) ;

const char* zfiHpGetisoNamefromregionCode(zdev_t* dev, u16_t regionCode)
{
    return zfHpGetisoNamefromregionCode(dev, regionCode);
}
