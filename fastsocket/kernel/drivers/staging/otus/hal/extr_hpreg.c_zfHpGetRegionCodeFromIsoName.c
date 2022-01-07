
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef size_t u16_t ;
struct TYPE_3__ {size_t regDmnEnum; scalar_t__ isoName; } ;


 size_t DEF_REGDMN ;
 size_t N (TYPE_1__*) ;
 TYPE_1__* allCountries ;
 scalar_t__ zfMemoryIsEqual (int *,int *,int) ;

u16_t zfHpGetRegionCodeFromIsoName(zdev_t* dev, u8_t *countryIsoName)
{
    u16_t i;
    u16_t regionCode;


    regionCode = DEF_REGDMN;

    for (i = 0; i < N(allCountries); i++)
    {
        if (zfMemoryIsEqual((u8_t *)allCountries[i].isoName, countryIsoName, 2))
        {
            regionCode = allCountries[i].regDmnEnum;
            break;
        }
    }

    return regionCode;
}
