
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsBssInfo {int* wpaIe; int* rsnIe; } ;
struct TYPE_3__ {scalar_t__ wepStatus; int authMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int FALSE ;
 int TRUE ;
 int ZM_AES ;




 scalar_t__ ZM_ENCRYPTION_AES ;
 scalar_t__ ZM_ENCRYPTION_TKIP ;
 int ZM_TKIP ;
 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfCheckWPAAuth(zdev_t* dev, struct zsBssInfo* pBssInfo)
{
    u8_t ret=TRUE;
    u8_t pmkCount;
    u8_t i;
    u16_t encAlgoType = 0;

    zmw_get_wlan_dev(dev);

    if ( wd->sta.wepStatus == ZM_ENCRYPTION_TKIP )
    {
        encAlgoType = ZM_TKIP;
    }
    else if ( wd->sta.wepStatus == ZM_ENCRYPTION_AES )
    {
        encAlgoType = ZM_AES;
    }

    switch(wd->sta.authMode)
    {
        case 131:
        case 128:
            if ( pBssInfo->wpaIe[1] == 0 )
            {
                ret = FALSE;
                break;
            }

            pmkCount = pBssInfo->wpaIe[12];
            for(i=0; i < pmkCount; i++)
            {
                if ( pBssInfo->wpaIe[17 + 4*i] == encAlgoType )
                {
                    ret = TRUE;
                    goto done;
                }
            }

            ret = FALSE;
            break;

        case 130:
        case 129:
            if ( pBssInfo->rsnIe[1] == 0 )
            {
                ret = FALSE;
                break;
            }

            pmkCount = pBssInfo->rsnIe[8];
            for(i=0; i < pmkCount; i++)
            {
                if ( pBssInfo->rsnIe[13 + 4*i] == encAlgoType )
                {
                    ret = TRUE;
                    goto done;
                }
            }

            ret = FALSE;
            break;
    }

done:
    return ret;
}
