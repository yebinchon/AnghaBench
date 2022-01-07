
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;
struct zsWlanProbeRspFrameHeader {scalar_t__* bssid; int* ssid; } ;
struct zsBssInfo {scalar_t__* bssid; int* ssid; int frequency; struct zsBssInfo* next; } ;
struct TYPE_4__ {scalar_t__ bssCount; struct zsBssInfo* head; } ;
struct TYPE_5__ {int currentFrequency; TYPE_1__ bssList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;


 int ZM_WLAN_EID_DS ;
 TYPE_3__* wd ;
 int zfChNumToFreq (int *,scalar_t__,int ) ;
 int zfFindElement (int *,int *,int ) ;
 scalar_t__ zfHpIsAllowedChannel (int *,int) ;
 int zmw_get_wlan_dev (int *) ;
 scalar_t__ zmw_rx_buf_readb (int *,int *,int) ;

struct zsBssInfo* zfStaFindBssInfo(zdev_t* dev, zbuf_t* buf, struct zsWlanProbeRspFrameHeader *pProbeRspHeader)
{
    u8_t i;
    u8_t j;
    u8_t k;
    u8_t isMatched, length, channel;
    u16_t offset, frequency;
    struct zsBssInfo* pBssInfo;

    zmw_get_wlan_dev(dev);

    if ((pBssInfo = wd->sta.bssList.head) == ((void*)0))
    {
        return ((void*)0);
    }

    for( i=0; i<wd->sta.bssList.bssCount; i++ )
    {



        for( j=0; j<6; j++ )
        {
            if ( pBssInfo->bssid[j] != pProbeRspHeader->bssid[j] )
            {
                break;
            }
        }


        if (j == 6)
        {
            if (pProbeRspHeader->ssid[1] <= 32)
            {

                isMatched = 1;
    if((pProbeRspHeader->ssid[1] != 0) && (pBssInfo->ssid[1] != 0))
    {
                for( k=1; k<pProbeRspHeader->ssid[1] + 1; k++ )
                {
                    if ( pBssInfo->ssid[k] != pProbeRspHeader->ssid[k] )
                    {
                        isMatched = 0;
                        break;
                    }
                }
            }
            }
            else
            {
                isMatched = 0;
            }
        }
        else
        {
            isMatched = 0;
        }



        if (isMatched) {
            if ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_DS)) != 0xffff) {
                if ((length = zmw_rx_buf_readb(dev, buf, offset+1)) == 1) {
                    channel = zmw_rx_buf_readb(dev, buf, offset+2);
                    if (zfHpIsAllowedChannel(dev, zfChNumToFreq(dev, channel, 0)) == 0) {
                        frequency = 0;
                    } else {
                        frequency = zfChNumToFreq(dev, channel, 0);;
                    }
                } else {
                    frequency = 0;
                }
            } else {
                frequency = wd->sta.currentFrequency;
            }

            if (frequency != 0) {
                if ( ((frequency > 3000) && (pBssInfo->frequency > 3000))
                     || ((frequency < 3000) && (pBssInfo->frequency < 3000)) ) {

                    break;
                }
            }
        }

        pBssInfo = pBssInfo->next;
    }

    if ( i == wd->sta.bssList.bssCount )
    {
        pBssInfo = ((void*)0);
    }

    return pBssInfo;
}
