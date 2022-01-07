
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct TYPE_3__ {int* countryIsoName; } ;
struct TYPE_4__ {TYPE_1__ ws; } ;


 TYPE_2__* wd ;
 int zfHpGetRegulationTablefromISO (int *,int*,int) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfiWlanSetCountryIsoName(zdev_t* dev, u8_t *countryIsoName, u8_t length)
{
    u8_t buf[5];
    zmw_get_wlan_dev(dev);

    if (length == 4)
    {
        buf[2] = wd->ws.countryIsoName[0] = countryIsoName[2];
        buf[3] = wd->ws.countryIsoName[1] = countryIsoName[1];
        buf[4] = wd->ws.countryIsoName[2] = countryIsoName[0];
    }
    else if (length == 3)
    {
        buf[2] = wd->ws.countryIsoName[0] = countryIsoName[1];
        buf[3] = wd->ws.countryIsoName[1] = countryIsoName[0];
        buf[4] = wd->ws.countryIsoName[2] = '\0';
    }
    else
    {
        return 1;
    }

    return zfHpGetRegulationTablefromISO(dev, buf, length);
}
