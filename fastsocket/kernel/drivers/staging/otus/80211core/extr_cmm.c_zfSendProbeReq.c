
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct TYPE_9__ {scalar_t__ bIbssGMode; } ;
struct TYPE_8__ {int currentFrequency; } ;
struct TYPE_7__ {TYPE_1__* probingSsidList; } ;
struct TYPE_10__ {int supportMode; scalar_t__ wlanMode; TYPE_4__ wfc; TYPE_3__ sta; TYPE_2__ ws; } ;
struct TYPE_6__ {scalar_t__ ssidLen; int ssid; } ;


 scalar_t__ ZM_MODE_IBSS ;
 int ZM_RATE_SET_CCK ;
 int ZM_RATE_SET_OFDM ;
 int ZM_WIRELESS_MODE_24_54 ;
 int ZM_WIRELESS_MODE_24_N ;
 int ZM_WLAN_EID_EXTENDED_RATE ;
 scalar_t__ ZM_WLAN_EID_SSID ;
 int ZM_WLAN_EID_SUPPORT_RATE ;
 TYPE_5__* wd ;
 int zfCopyToIntTxBuffer (int *,int *,int ,scalar_t__,scalar_t__) ;
 scalar_t__ zfMmAddIeSupportRate (int *,int *,scalar_t__,int ,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_tx_buf_writeb (int *,int *,int ,scalar_t__) ;

u16_t zfSendProbeReq(zdev_t* dev, zbuf_t* buf, u16_t offset, u8_t bWithSSID)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();



    if (bWithSSID == 0)
    {

        zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_SSID);
        zmw_tx_buf_writeb(dev, buf, offset++, 0);
    }
    else
    {
        zmw_enter_critical_section(dev);
        if (wd->ws.probingSsidList[bWithSSID-1].ssidLen == 0)
        {
            zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_SSID);
            zmw_tx_buf_writeb(dev, buf, offset++, 0);
        }
        else
        {
            zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_SSID);
            zmw_tx_buf_writeb(dev, buf, offset++,
                    wd->ws.probingSsidList[bWithSSID-1].ssidLen);
            zfCopyToIntTxBuffer(dev, buf,
                    wd->ws.probingSsidList[bWithSSID-1].ssid,
                    offset,
                    wd->ws.probingSsidList[bWithSSID-1].ssidLen);
            offset += wd->ws.probingSsidList[bWithSSID-1].ssidLen;
        }
        zmw_leave_critical_section(dev);
    }


    if ( wd->sta.currentFrequency < 3000 )
    {
        offset = zfMmAddIeSupportRate(dev, buf, offset,
                                      ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_CCK);

        if (wd->supportMode & (ZM_WIRELESS_MODE_24_54|ZM_WIRELESS_MODE_24_N)) {
            if (wd->wlanMode == ZM_MODE_IBSS) {
                if (wd->wfc.bIbssGMode) {
                    offset = zfMmAddIeSupportRate(dev, buf, offset,
                                      ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
                }
            } else {
                offset = zfMmAddIeSupportRate(dev, buf, offset,
                                      ZM_WLAN_EID_EXTENDED_RATE, ZM_RATE_SET_OFDM);
            }
        }
    }
    else
    {
        offset = zfMmAddIeSupportRate(dev, buf, offset,
                                      ZM_WLAN_EID_SUPPORT_RATE, ZM_RATE_SET_OFDM);
    }

    return offset;
}
