
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef scalar_t__ u16_t ;
struct zsBssInfo {int* capability; scalar_t__* ssid; scalar_t__ securityType; scalar_t__* bssid; int frequency; int EnableHT; int apCap; int enableHT40; scalar_t__* extSupportedRates; struct zsBssInfo* next; int wmeSupport; } ;
struct TYPE_4__ {scalar_t__ bssCount; struct zsBssInfo* head; } ;
struct TYPE_5__ {scalar_t__ ssidLen; scalar_t__ wepStatus; int dropUnencryptedPkts; scalar_t__ authMode; scalar_t__ bDesiredBssid; scalar_t__* desiredBssid; int apWmeCapability; int ssid; TYPE_1__ bssList; } ;
struct TYPE_6__ {int connectMode; TYPE_2__ sta; } ;


 int CHANNEL_A ;
 int CHANNEL_A_HT ;
 int CHANNEL_B ;
 int CHANNEL_G ;
 int CHANNEL_G_HT ;
 int CHANNEL_HT20 ;
 int CHANNEL_HT40 ;
 scalar_t__ TRUE ;
 scalar_t__ ZM_AUTH_MODE_AUTO ;
 scalar_t__ ZM_AUTH_MODE_OPEN ;
 int ZM_All11N_AP ;
 int ZM_BIT_0 ;
 int ZM_BIT_1 ;
 int ZM_BIT_2 ;
 int ZM_BIT_3 ;
 int ZM_BIT_4 ;
 scalar_t__ ZM_ENCRYPTION_WEP_DISABLED ;
 scalar_t__ ZM_ENCRYPTION_WEP_ENABLED ;
 int ZM_LV_0 ;
 int ZM_LV_1 ;
 scalar_t__ ZM_SECURITY_TYPE_WPA ;
 TYPE_3__* wd ;
 int zfCheckAuthentication (int *,struct zsBssInfo*) ;
 scalar_t__ zfMemoryIsEqual (scalar_t__*,int ,scalar_t__) ;
 scalar_t__ zfStaIsApInBlockingList (int *,scalar_t__*) ;
 int zfwMemoryCopy (void*,void*,int) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

__attribute__((used)) static struct zsBssInfo* zfInfraFindAPToConnect(zdev_t* dev,
        struct zsBssInfo* candidateBss)
{
    struct zsBssInfo* pBssInfo;
    struct zsBssInfo* pNowBssInfo=((void*)0);
    u16_t i;
    u16_t ret, apWepStatus;
    u32_t k;
    u32_t channelFlags;

    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    pBssInfo = wd->sta.bssList.head;

    for(i=0; i<wd->sta.bssList.bssCount; i++)
    {
        if ( pBssInfo->capability[0] & ZM_BIT_4 )
        {
            apWepStatus = ZM_ENCRYPTION_WEP_ENABLED;
        }
        else
        {
            apWepStatus = ZM_ENCRYPTION_WEP_DISABLED;
        }

        if ( ((zfMemoryIsEqual(&(pBssInfo->ssid[2]), wd->sta.ssid,
                               wd->sta.ssidLen))&&
              (wd->sta.ssidLen == pBssInfo->ssid[1]))||
             ((wd->sta.ssidLen == 0)&&

              (wd->sta.wepStatus == apWepStatus )&&
              (pBssInfo->securityType != ZM_SECURITY_TYPE_WPA) ))
        {
            if ( wd->sta.ssidLen == 0 )
            {
                zm_debug_msg0("ANY BSS found");
            }

            if ( ((wd->sta.wepStatus == ZM_ENCRYPTION_WEP_DISABLED && apWepStatus == ZM_ENCRYPTION_WEP_ENABLED) ||
                 (wd->sta.wepStatus == ZM_ENCRYPTION_WEP_ENABLED &&
                 (apWepStatus == ZM_ENCRYPTION_WEP_DISABLED && wd->sta.dropUnencryptedPkts == 1))) &&
                 (wd->sta.authMode >= ZM_AUTH_MODE_OPEN && wd->sta.authMode <= ZM_AUTH_MODE_AUTO) )
            {
                zm_debug_msg0("Privacy policy is inconsistent");
                pBssInfo = pBssInfo->next;
                continue;
            }


            if ( !zfCheckAuthentication(dev, pBssInfo) )
            {
                pBssInfo = pBssInfo->next;
                continue;
            }


            if (wd->sta.bDesiredBssid == TRUE)
            {
                for (k=0; k<6; k++)
                {
                    if (wd->sta.desiredBssid[k] != pBssInfo->bssid[k])
                    {
                        zm_msg0_mm(ZM_LV_1, "desired bssid not matched 1");
                        break;
                    }
                }

                if (k != 6)
                {
                    zm_msg0_mm(ZM_LV_1, "desired bssid not matched 2");
                    pBssInfo = pBssInfo->next;
                    continue;
                }
            }


            if (pBssInfo->frequency > 3000) {
                if ( (pBssInfo->EnableHT == 1)
                    || (pBssInfo->apCap & ZM_All11N_AP) )
                {
                    channelFlags = CHANNEL_A_HT;
                    if (pBssInfo->enableHT40 == 1) {
                        channelFlags |= CHANNEL_HT40;
                    }
                } else {
                    channelFlags = CHANNEL_A;
                }
            } else {
                if ( (pBssInfo->EnableHT == 1)
                    || (pBssInfo->apCap & ZM_All11N_AP) )
                {
                    channelFlags = CHANNEL_G_HT;
                    if(pBssInfo->enableHT40 == 1) {
                        channelFlags |= CHANNEL_HT40;
                    }
                } else {
                    if (pBssInfo->extSupportedRates[1] == 0) {
                        channelFlags = CHANNEL_B;
                    } else {
                        channelFlags = CHANNEL_G;
                    }
                }
            }

            if ( ((channelFlags == CHANNEL_B) && (wd->connectMode & ZM_BIT_0))
                || ((channelFlags == CHANNEL_G) && (wd->connectMode & ZM_BIT_1))
                || ((channelFlags == CHANNEL_A) && (wd->connectMode & ZM_BIT_2))
                || ((channelFlags & CHANNEL_HT20) && (wd->connectMode & ZM_BIT_3)) )
            {
                pBssInfo = pBssInfo->next;
                continue;
            }


            if ((ret = zfStaIsApInBlockingList(dev, pBssInfo->bssid)) == TRUE)
            {
                zm_msg0_mm(ZM_LV_0, "Candidate AP in blocking List, skip if there's stilla choice!");
                pNowBssInfo = pBssInfo;
                pBssInfo = pBssInfo->next;
                continue;
            }

            if ( pBssInfo->capability[0] & ZM_BIT_0 )
            {
                    pNowBssInfo = pBssInfo;
                    wd->sta.apWmeCapability = pBssInfo->wmeSupport;


                    goto done;
            }
        }

        pBssInfo = pBssInfo->next;
    }

done:
    if (pNowBssInfo != ((void*)0))
    {
        zfwMemoryCopy((void*)candidateBss, (void*)pNowBssInfo, sizeof(struct zsBssInfo));
        pNowBssInfo = candidateBss;
    }

    zmw_leave_critical_section(dev);

    return pNowBssInfo;
}
