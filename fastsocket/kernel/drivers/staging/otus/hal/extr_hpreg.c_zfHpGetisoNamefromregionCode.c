
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct TYPE_3__ {size_t regDmnEnum; char const* isoName; } ;


 size_t N (TYPE_1__*) ;
 TYPE_1__* allCountries ;

const char* zfHpGetisoNamefromregionCode(zdev_t* dev, u16_t regionCode)
{
    u16_t i;

    for (i = 0; i < N(allCountries); i++)
    {
        if (allCountries[i].regDmnEnum == regionCode)
        {
            return allCountries[i].isoName;
        }
    }

    return allCountries[0].isoName;
}
