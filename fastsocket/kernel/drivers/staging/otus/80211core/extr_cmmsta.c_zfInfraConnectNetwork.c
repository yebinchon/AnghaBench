
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef void* u8_t ;
typedef int u16_t ;
struct zsBssInfo {scalar_t__* ssid; int* beaconInterval; int EnableHT; scalar_t__ securityType; scalar_t__* cencIe; scalar_t__* wpaIe; scalar_t__* rsnIe; int* capability; int enableHT40; int extChOffset; int athOwlAp; int erp; int marvelAp; int frameBodysize; int* timeStamp; int* frameBody; int macaddr; int SG40; int extSupportedRates; int supportedRates; int bssid; int frequency; } ;
struct TYPE_4__ {scalar_t__ tempWakeUp; } ;
struct TYPE_5__ {scalar_t__ SWEncryptEnable; scalar_t__ bSafeMode; scalar_t__ ssidLen; int* capability; int EnableHT; scalar_t__ wepStatus; int athOwlAp; int enableDrvBA; int beaconFrameBodySize; int* beaconFrameBody; scalar_t__ authMode; int connectTimeoutCount; int bIsSharedKey; int bssid; void* bProtectionMode; scalar_t__* rsnIe; scalar_t__* wpaIe; int encryMode; void* wpaState; scalar_t__* cencIe; scalar_t__ wmeEnabled; int SG40; scalar_t__* ssid; int connectState; int uapsdQ; scalar_t__ qosInfo; TYPE_1__ psMgr; scalar_t__ wmeConnected; scalar_t__ bssNotFoundCount; } ;
struct TYPE_6__ {int beaconInterval; scalar_t__ preambleTypeInUsed; scalar_t__ preambleType; int BandWidth40; int ExtOffset; int reorder; TYPE_2__ sta; int frequency; } ;


 void* FALSE ;
 int NdisCENC_PSK ;
 void* TRUE ;
 int ZM_AES ;
 scalar_t__ ZM_AUTH_MODE_AUTO ;
 scalar_t__ ZM_AUTH_MODE_OPEN ;
 scalar_t__ ZM_AUTH_MODE_SHARED_KEY ;
 int ZM_BIT_0 ;
 int ZM_BIT_1 ;
 int ZM_BIT_2 ;
 int ZM_BIT_4 ;
 int ZM_BIT_5 ;
 int ZM_CACHED_FRAMEBODY_SIZE ;
 int ZM_DEFAULT_SUPPORT_RATE_ZERO ;
 scalar_t__ ZM_ENCRYPTION_AES ;
 scalar_t__ ZM_ENCRYPTION_TKIP ;
 scalar_t__ ZM_ENCRYPTION_WEP_DISABLED ;
 scalar_t__ ZM_ENCRYPTION_WEP_ENABLED ;
 void* ZM_MPDU_DENSITY_8US ;
 void* ZM_MPDU_DENSITY_NONE ;
 scalar_t__ ZM_PREAMBLE_TYPE_AUTO ;
 scalar_t__ ZM_PREAMBLE_TYPE_LONG ;
 scalar_t__ ZM_PREAMBLE_TYPE_SHORT ;
 scalar_t__ ZM_SECURITY_TYPE_CENC ;
 scalar_t__ ZM_SECURITY_TYPE_WPA ;
 int ZM_STATUS_MEDIA_DISCONNECT_NOT_FOUND ;
 int ZM_STA_CONN_STATE_NONE ;
 int ZM_STA_STATE_CONNECTING ;
 void* ZM_STA_WPA_STATE_INIT ;
 int ZM_SW_TKIP_DECRY_EN ;
 int ZM_SW_TKIP_ENCRY_EN ;
 int ZM_SW_WEP_DECRY_EN ;
 int ZM_SW_WEP_ENCRY_EN ;
 int ZM_TKIP ;
 int cencInit (int *) ;
 int cencSetCENCMode (int *,int ) ;
 TYPE_3__* wd ;
 int zfBssInfoReorderList (int *) ;
 int zfChangeAdapterState (int *,int ) ;
 int zfCoreSetFrequencyV2 (int *,int ,int ) ;
 int zfHpDisableHwRetry (int *) ;
 int zfHpEnableHwRetry (int *) ;
 int zfHpSetMPDUDensity (int *,void*) ;
 int zfHpSetSlotTime (int *,int) ;
 int zfHpSetSlotTimeRegister (int *,int) ;
 struct zsBssInfo* zfInfraFindAPToConnect (int *,struct zsBssInfo*) ;
 int zfMemoryCopy (scalar_t__*,scalar_t__*,scalar_t__) ;
 int zfPowerSavingMgrWakeup (int *) ;
 int zfQueueFlush (int *,int ) ;
 int zfResetSupportRate (int *,int ) ;
 int zfStaConnectFail (int *,int ,int ,int ) ;
 int zfStaDisableSWEncryption (int *) ;
 int zfStaEnableSWEncryption (int *,int) ;
 int zfStaRefreshBlockList (int *,int ) ;
 int zfStaStartConnectCb ;
 int zfUpdateBssid (int *,int ) ;
 int zfUpdateDefaultQosParameter (int *,int ) ;
 int zfUpdateSupportRate (int *,int ) ;
 int zfwCencHandleBeaconProbrespon (int *,void**,void**,void**) ;
 int zm_debug_msg0 (char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfInfraConnectNetwork(zdev_t* dev)
{
    struct zsBssInfo* pBssInfo;
    struct zsBssInfo* pNowBssInfo=((void*)0);
    struct zsBssInfo candidateBss;


    u8_t ret=FALSE;
    u16_t k;
    u8_t density = ZM_MPDU_DENSITY_NONE;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();



    zmw_enter_critical_section(dev);
    wd->sta.bssNotFoundCount = 0;
    zmw_leave_critical_section(dev);


    zfUpdateDefaultQosParameter(dev, 0);

    zfStaRefreshBlockList(dev, 0);


    zfChangeAdapterState(dev, ZM_STA_STATE_CONNECTING);
    zfPowerSavingMgrWakeup(dev);

    wd->sta.wmeConnected = 0;
    wd->sta.psMgr.tempWakeUp = 0;
    wd->sta.qosInfo = 0;
    zfQueueFlush(dev, wd->sta.uapsdQ);

    wd->sta.connectState = ZM_STA_CONN_STATE_NONE;


    zfBssInfoReorderList(dev);

    pNowBssInfo = zfInfraFindAPToConnect(dev, &candidateBss);

 if (wd->sta.SWEncryptEnable != 0)
 {
     if (wd->sta.bSafeMode == 0)
     {
      zfStaDisableSWEncryption(dev);
     }
 }
    if ( pNowBssInfo != ((void*)0) )
    {


        pBssInfo = pNowBssInfo;
        wd->sta.ssidLen = pBssInfo->ssid[1];
        zfMemoryCopy(wd->sta.ssid, &(pBssInfo->ssid[2]), pBssInfo->ssid[1]);
        wd->frequency = pBssInfo->frequency;



        zfUpdateBssid(dev, pBssInfo->bssid);
        zfResetSupportRate(dev, ZM_DEFAULT_SUPPORT_RATE_ZERO);
        zfUpdateSupportRate(dev, pBssInfo->supportedRates);
        zfUpdateSupportRate(dev, pBssInfo->extSupportedRates);

        wd->beaconInterval = pBssInfo->beaconInterval[0] +
                             (((u16_t) pBssInfo->beaconInterval[1]) << 8);
        if (wd->beaconInterval == 0)
        {
            wd->beaconInterval = 100;
        }


        wd->sta.capability[0] |= ZM_BIT_0;

        wd->sta.capability[0] &= ~ZM_BIT_1;


        wd->sta.EnableHT = pBssInfo->EnableHT;
        wd->sta.SG40 = pBssInfo->SG40;
        if ( pBssInfo->securityType == ZM_SECURITY_TYPE_WPA )
        {
            wd->sta.wpaState = ZM_STA_WPA_STATE_INIT;

            if ( wd->sta.wepStatus == ZM_ENCRYPTION_TKIP )
            {
                wd->sta.encryMode = ZM_TKIP;


                if (wd->sta.EnableHT == 1)
                {
                    zfStaEnableSWEncryption(dev, (ZM_SW_TKIP_ENCRY_EN|ZM_SW_TKIP_DECRY_EN));
                }




            }
            else if ( wd->sta.wepStatus == ZM_ENCRYPTION_AES )
            {
                wd->sta.encryMode = ZM_AES;


                if (wd->sta.EnableHT)
                {

                    density = ZM_MPDU_DENSITY_8US;
                }
            }

            if ( pBssInfo->wpaIe[1] != 0 )
            {
                zfMemoryCopy(wd->sta.wpaIe, pBssInfo->wpaIe,
                             pBssInfo->wpaIe[1]+2);
            }
            else
            {
                wd->sta.wpaIe[1] = 0;
            }

            if ( pBssInfo->rsnIe[1] != 0 )
            {
                zfMemoryCopy(wd->sta.rsnIe, pBssInfo->rsnIe,
                             pBssInfo->rsnIe[1]+2);
            }
            else
            {
                wd->sta.rsnIe[1] = 0;
            }
        }




        wd->preambleTypeInUsed = wd->preambleType;
        if ( wd->preambleTypeInUsed == ZM_PREAMBLE_TYPE_AUTO )
        {
            if (pBssInfo->capability[0] & ZM_BIT_5)
            {
                wd->preambleTypeInUsed = ZM_PREAMBLE_TYPE_SHORT;
            }
            else
            {
                wd->preambleTypeInUsed = ZM_PREAMBLE_TYPE_LONG;
            }
        }

        if (wd->preambleTypeInUsed == ZM_PREAMBLE_TYPE_LONG)
        {
            wd->sta.capability[0] &= ~ZM_BIT_5;
        }
        else
        {
            wd->sta.capability[0] |= ZM_BIT_5;
        }


        if ((pBssInfo->enableHT40 == 1) &&
            ((pBssInfo->extChOffset == 1) || (pBssInfo->extChOffset == 3)))
        {
            wd->BandWidth40 = pBssInfo->enableHT40;
            wd->ExtOffset = pBssInfo->extChOffset;
        }
        else
        {
            wd->BandWidth40 = 0;
            wd->ExtOffset = 0;
        }




        if ( pBssInfo->athOwlAp & ZM_BIT_0 )
        {



            zfHpDisableHwRetry(dev);
            wd->sta.athOwlAp = 1;

            density = ZM_MPDU_DENSITY_8US;
        }
        else
        {



            zfHpEnableHwRetry(dev);
            wd->sta.athOwlAp = 0;
        }
        wd->reorder = 1;


        zfHpSetMPDUDensity(dev, density);


        if ( pBssInfo->capability[1] & ZM_BIT_2 )
        {
            wd->sta.capability[1] |= ZM_BIT_2;
        }

        if ( pBssInfo->erp & ZM_BIT_1 )
        {

            wd->sta.bProtectionMode = TRUE;
            zfHpSetSlotTime(dev, 0);
        }
        else
        {

            wd->sta.bProtectionMode = FALSE;
            zfHpSetSlotTime(dev, 1);
        }

        if (pBssInfo->marvelAp == 1)
        {
            wd->sta.enableDrvBA = 0;




            zfHpSetSlotTimeRegister(dev, 0);
        }
        else
        {
            wd->sta.enableDrvBA = 1;






            zfHpSetSlotTimeRegister(dev, 1);
        }


        wd->sta.beaconFrameBodySize = pBssInfo->frameBodysize + 12;
        if (wd->sta.beaconFrameBodySize > ZM_CACHED_FRAMEBODY_SIZE)
        {
            wd->sta.beaconFrameBodySize = ZM_CACHED_FRAMEBODY_SIZE;
        }
        for (k=0; k<8; k++)
        {
            wd->sta.beaconFrameBody[k] = pBssInfo->timeStamp[k];
        }
        wd->sta.beaconFrameBody[8] = pBssInfo->beaconInterval[0];
        wd->sta.beaconFrameBody[9] = pBssInfo->beaconInterval[1];
        wd->sta.beaconFrameBody[10] = pBssInfo->capability[0];
        wd->sta.beaconFrameBody[11] = pBssInfo->capability[1];
        for (k=0; k<(wd->sta.beaconFrameBodySize - 12); k++)
        {
            wd->sta.beaconFrameBody[k+12] = pBssInfo->frameBody[k];
        }

        if ( ( pBssInfo->capability[0] & ZM_BIT_4 )&&
             (( wd->sta.authMode == ZM_AUTH_MODE_OPEN )||
              ( wd->sta.authMode == ZM_AUTH_MODE_SHARED_KEY)||
              (wd->sta.authMode == ZM_AUTH_MODE_AUTO)) )
        {

            if ( wd->sta.wepStatus == ZM_ENCRYPTION_WEP_DISABLED )
            {
                zm_debug_msg0("Adapter is no WEP, try to connect to WEP AP");
                ret = FALSE;
            }


            if ( wd->sta.wepStatus == ZM_ENCRYPTION_WEP_ENABLED )
            {

                if (wd->sta.EnableHT == 1)
                {
                    zfStaEnableSWEncryption(dev, (ZM_SW_WEP_ENCRY_EN|ZM_SW_WEP_DECRY_EN));
                }




            }

            wd->sta.capability[0] |= ZM_BIT_4;

            if ( wd->sta.authMode == ZM_AUTH_MODE_AUTO )
            {
                if ( (wd->sta.connectTimeoutCount % 2) == 0 )
                    wd->sta.bIsSharedKey = 0;
                else
                    wd->sta.bIsSharedKey = 1;
            }
            else if ( wd->sta.authMode != ZM_AUTH_MODE_SHARED_KEY )
            {

                wd->sta.bIsSharedKey = 0;
            }
            else if ( wd->sta.authMode != ZM_AUTH_MODE_OPEN )
            {

                wd->sta.bIsSharedKey = 1;
            }
        }
        else
        {
            if ( (pBssInfo->securityType == ZM_SECURITY_TYPE_WPA)||
                 (pBssInfo->capability[0] & ZM_BIT_4) )
            {
                wd->sta.capability[0] |= ZM_BIT_4;

            }
            else
            {
                wd->sta.capability[0] &= (~ZM_BIT_4);
            }



            wd->sta.bIsSharedKey = 0;
        }
    }
    else
    {
        zm_debug_msg0("Desired SSID not found");
        goto zlConnectFailed;
    }


    zfCoreSetFrequencyV2(dev, wd->frequency, zfStaStartConnectCb);
    return;

zlConnectFailed:
    zfStaConnectFail(dev, ZM_STATUS_MEDIA_DISCONNECT_NOT_FOUND, wd->sta.bssid, 0);
    return;
}
