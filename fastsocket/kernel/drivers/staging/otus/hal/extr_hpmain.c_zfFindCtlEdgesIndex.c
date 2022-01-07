
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u8_t ;
struct zsHpPriv {int * eepromImage; } ;
struct ar5416Eeprom {size_t* ctlIndex; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;


 size_t AR5416_NUM_CTLS ;
 TYPE_1__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfFindCtlEdgesIndex(zdev_t* dev, u8_t desired_CtlIndex)
{
    u8_t i;
    struct zsHpPriv* hpPriv;
    struct ar5416Eeprom* eepromImage;

    zmw_get_wlan_dev(dev);

    hpPriv = wd->hpPrivate;

    eepromImage = (struct ar5416Eeprom*)&(hpPriv->eepromImage[(1024+512)/4]);


    for (i = 0; i < AR5416_NUM_CTLS; i++)
    {
        if(desired_CtlIndex == eepromImage->ctlIndex[i])
            break;
    }
    return i;
}
