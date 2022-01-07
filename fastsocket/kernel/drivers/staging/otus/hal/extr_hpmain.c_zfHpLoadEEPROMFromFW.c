
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
struct zsHpPriv {int eepromImageRdReq; } ;
struct TYPE_2__ {scalar_t__ hpPrivate; } ;


 int ZM_EEPROM_READ ;
 int ZM_HAL_MAX_EEPROM_PRQ ;
 TYPE_1__* wd ;
 int zfIssueCmd (int *,int*,int,int ,int ) ;
 int zmw_get_wlan_dev (int *) ;

u32_t zfHpLoadEEPROMFromFW(zdev_t* dev)
{
    u32_t cmd[16];
    u32_t ret=0, i, j;
    zmw_get_wlan_dev(dev);

    i = ((struct zsHpPriv*)wd->hpPrivate)->eepromImageRdReq;

    cmd[0] = ZM_HAL_MAX_EEPROM_PRQ*4;

    for (j=0; j<ZM_HAL_MAX_EEPROM_PRQ; j++)
    {
        cmd[j+1] = 0x1000 + (((i*ZM_HAL_MAX_EEPROM_PRQ) + j)*4);
    }

    ret = zfIssueCmd(dev, cmd, (ZM_HAL_MAX_EEPROM_PRQ+1)*4, ZM_EEPROM_READ, 0);

    return ret;
}
