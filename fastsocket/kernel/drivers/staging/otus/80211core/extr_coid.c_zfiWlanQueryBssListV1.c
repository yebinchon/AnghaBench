
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u8_t ;
struct zsBssListV1 {int bssCount; TYPE_1__* bssInfo; } ;
struct zsBssInfo {int* bssid; scalar_t__* ssid; scalar_t__ frequency; struct zsBssInfo* next; } ;
struct TYPE_6__ {int bssCount; struct zsBssInfo* head; } ;
struct TYPE_7__ {scalar_t__ ssidLen; int* ssid; TYPE_2__ bssList; int bssid; } ;
struct TYPE_8__ {scalar_t__ wlanMode; scalar_t__ frequency; TYPE_3__ sta; } ;
struct TYPE_5__ {int* ssid; } ;


 int ZM_MAC_WORD_TO_BYTE (int ,int*) ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 TYPE_4__* wd ;
 int zfMemoryCopy (int*,int*,int) ;
 int zfScanMgrScanAck (int *) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zm_assert (int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfiWlanQueryBssListV1(zdev_t* dev, struct zsBssListV1* bssListV1)
{
    struct zsBssInfo* pBssInfo;

    u8_t i, j, bdrop = 0, k = 0, Same_Count = 0;
    u8_t bssid[6];


    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    bssListV1->bssCount = wd->sta.bssList.bssCount;

    pBssInfo = wd->sta.bssList.head;
    ZM_MAC_WORD_TO_BYTE(wd->sta.bssid, bssid);

    for( i=0; i<wd->sta.bssList.bssCount; i++ )
    {
        bdrop = 0;
        if ( zfStaIsConnected(dev)
             && (wd->wlanMode == ZM_MODE_INFRASTRUCTURE ) )
        {
   for (j = 0; j < 6; j++)
            {
                if ( pBssInfo->bssid[j] != bssid[j] )
                {
                    break;
                }
            }

            if ( (j == 6)
                  &&((pBssInfo->ssid[1] == wd->sta.ssidLen) || (pBssInfo->ssid[1] == 0) )&& (pBssInfo->frequency == wd->frequency) )
            {
    if(pBssInfo->ssid[1] == 0)
     pBssInfo->ssid[1] = wd->sta.ssidLen;

    if(Same_Count == 0)
    {
     Same_Count++;
    }
    else
    {
     bdrop = 1;
     bssListV1->bssCount--;
    }

            }
        }

        if (bdrop == 0)
        {
            zfMemoryCopy((u8_t*)(&bssListV1->bssInfo[k]), (u8_t*)pBssInfo,
                sizeof(struct zsBssInfo));

   if(Same_Count == 1)
   {
    zfMemoryCopy(&(bssListV1->bssInfo[k].ssid[2]), wd->sta.ssid, wd->sta.ssidLen);
    Same_Count++;
   }

   k++;
        }

        if ( pBssInfo->next != ((void*)0) )
        {
            pBssInfo = pBssInfo->next;
        }
        else
        {
            zm_assert(i==(wd->sta.bssList.bssCount-1));
        }
    }

    zmw_leave_critical_section(dev);

    zfScanMgrScanAck(dev);
}
