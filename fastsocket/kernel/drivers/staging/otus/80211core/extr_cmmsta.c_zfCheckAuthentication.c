
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsBssInfo {int* rsnIe; int* wpaIe; int securityType; int * wscIe; } ;
struct TYPE_3__ {scalar_t__ ssidLen; int authMode; int currentAuthMode; void* wepStatus; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int FALSE ;
 int TRUE ;
 void* ZM_ENCRYPTION_AES ;
 void* ZM_ENCRYPTION_TKIP ;
 int ZM_SECURITY_TYPE_WPA ;
 TYPE_2__* wd ;
 int zfCheckWPAAuth (int *,struct zsBssInfo*) ;
 int zmw_get_wlan_dev (int *) ;

u8_t zfCheckAuthentication(zdev_t* dev, struct zsBssInfo* pBssInfo)
{
    u8_t ret=TRUE;
    u16_t encAlgoType;
    u16_t UnicastCipherNum;

    zmw_get_wlan_dev(dev);


    if ( wd->sta.ssidLen == 0 )
    {
        return ret;
    }


 switch(wd->sta.authMode)

    {
        case 129:
        case 130:
            encAlgoType = 0;
            if(pBssInfo->rsnIe[1] != 0)
            {
                UnicastCipherNum = (pBssInfo->rsnIe[8]) +
                                   (pBssInfo->rsnIe[9] << 8);


                if (UnicastCipherNum == 1)
                {
                    encAlgoType = pBssInfo->rsnIe[13];

                }
                else
                {
                    u16_t ii;
                    u16_t desiredCipher = 0;
                    u16_t IEOffSet = 13;


                    for (ii = 0; ii < UnicastCipherNum; ii++)
                    {
                        if (pBssInfo->rsnIe[IEOffSet+ii*4] > desiredCipher)
                        {
                            desiredCipher = pBssInfo->rsnIe[IEOffSet+ii*4];
                        }
                    }

                    encAlgoType = desiredCipher;
                }

                if ( encAlgoType == 0x02 )
                {
           wd->sta.wepStatus = ZM_ENCRYPTION_TKIP;

           if ( wd->sta.authMode == 129 )
                    {
                        wd->sta.currentAuthMode = 133;
                    }
                    else
                    {
                        wd->sta.currentAuthMode = 132;
                    }
                }
                else if ( encAlgoType == 0x04 )
                {
                    wd->sta.wepStatus = ZM_ENCRYPTION_AES;

                    if ( wd->sta.authMode == 129 )
                    {
                        wd->sta.currentAuthMode = 133;
                    }
                    else
                    {
                        wd->sta.currentAuthMode = 132;
                    }
                }
                else
                {
                    ret = FALSE;
                }
            }
            else if(pBssInfo->wpaIe[1] != 0)
            {
                UnicastCipherNum = (pBssInfo->wpaIe[12]) +
                                   (pBssInfo->wpaIe[13] << 8);


                if (UnicastCipherNum == 1)
                {
                    encAlgoType = pBssInfo->wpaIe[17];

                }
                else
                {
                    u16_t ii;
                    u16_t desiredCipher = 0;
                    u16_t IEOffSet = 17;


                    for (ii = 0; ii < UnicastCipherNum; ii++)
                    {
                        if (pBssInfo->wpaIe[IEOffSet+ii*4] > desiredCipher)
                        {
                            desiredCipher = pBssInfo->wpaIe[IEOffSet+ii*4];
                        }
                    }

                    encAlgoType = desiredCipher;
                }

                if ( encAlgoType == 0x02 )
                {
           wd->sta.wepStatus = ZM_ENCRYPTION_TKIP;

           if ( wd->sta.authMode == 129 )
                    {
                        wd->sta.currentAuthMode = 134;
                    }
                    else
                    {
                        wd->sta.currentAuthMode = 131;
                    }
                }
                else if ( encAlgoType == 0x04 )
                {
                    wd->sta.wepStatus = ZM_ENCRYPTION_AES;

                    if ( wd->sta.authMode == 129 )
                    {
                        wd->sta.currentAuthMode = 134;
                    }
                    else
                    {
                        wd->sta.currentAuthMode = 131;
                    }
                }
                else
                {
                    ret = FALSE;
                }


            }
            else
            {
                ret = FALSE;
            }

            break;

        case 134:
        case 131:
        case 128:
        case 133:
        case 132:
            {
                if ( pBssInfo->securityType != ZM_SECURITY_TYPE_WPA )
                {
                    ret = FALSE;
                }

                ret = zfCheckWPAAuth(dev, pBssInfo);
            }
            break;

        case 136:
        case 135:
        case 137:
            {
                if ( pBssInfo->wscIe[1] )
                {

                    break;
                }
                else if ( pBssInfo->securityType == ZM_SECURITY_TYPE_WPA )
                {
                    ret = FALSE;
                }
            }
            break;

        default:
            break;
    }

    return ret;
}
