
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_3__ {scalar_t__ bProtectionMode; int NonNAPcount; int bssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int ZM_BIT_1 ;
 int ZM_MAC_WORD_TO_BYTE (int ,int*) ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_WLAN_EID_ERP ;
 int ZM_WLAN_EID_HT_CAPABILITY ;
 int ZM_WLAN_HEADER_A2_OFFSET ;
 int ZM_WLAN_PREN2_EID_HTCAPABILITY ;
 TYPE_2__* wd ;
 int zfFindElement (int *,int *,int ) ;
 int zfHpSetSlotTime (int *,int) ;
 scalar_t__ zfRxBufferEqualToStr (int *,int *,int*,int ,int) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

void zfStaProtErpMonitor(zdev_t* dev, zbuf_t* buf)
{
    u16_t offset;
    u8_t erp;
    u8_t bssid[6];

    zmw_get_wlan_dev(dev);

    if ( (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)&&(zfStaIsConnected(dev)) )
    {
        ZM_MAC_WORD_TO_BYTE(wd->sta.bssid, bssid);

        if (zfRxBufferEqualToStr(dev, buf, bssid, ZM_WLAN_HEADER_A2_OFFSET, 6))
        {
            if ( (offset=zfFindElement(dev, buf, ZM_WLAN_EID_ERP)) != 0xffff )
            {
                erp = zmw_rx_buf_readb(dev, buf, offset+2);

                if ( erp & ZM_BIT_1 )
                {

                    if (wd->sta.bProtectionMode == FALSE)
                    {
                        wd->sta.bProtectionMode = TRUE;
                        zfHpSetSlotTime(dev, 0);
                    }
                }
                else
                {

                    if (wd->sta.bProtectionMode == TRUE)
                    {
                        wd->sta.bProtectionMode = FALSE;
                        zfHpSetSlotTime(dev, 1);
                    }
                }
            }
        }


   if ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_HT_CAPABILITY)) != 0xffff)
   {}
   else if ((offset = zfFindElement(dev, buf, ZM_WLAN_PREN2_EID_HTCAPABILITY)) != 0xffff)
   {}
   else
   {wd->sta.NonNAPcount++;}
    }
}
