
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct TYPE_5__ {scalar_t__ wepStatus; int (* pStaRxSecurityCheckCb ) (int *,int *) ;scalar_t__ dropUnencryptedPkts; int * bssid; } ;
struct TYPE_4__ {int swRxDropUnencryptedCount; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ commTally; } ;


 int ZM_BIT_6 ;
 scalar_t__ ZM_ENCRYPTION_AES ;
 scalar_t__ ZM_ENCRYPTION_TKIP ;
 scalar_t__ ZM_ENCRYPTION_WEP_DISABLED ;
 int ZM_ERR_DATA_BEFORE_CONNECTED ;
 int ZM_ERR_DATA_BSSID_NOT_MATCHED ;
 int ZM_ERR_DATA_NOT_ENCRYPTED ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_SUCCESS ;
 int ZM_WLAN_DATA_FRAME ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 int ZM_WLAN_HEADER_A1_OFFSET ;
 scalar_t__ ZM_WLAN_HEADER_A2_OFFSET ;
 scalar_t__ ZM_WLAN_HEADER_A3_OFFSET ;
 int * sa ;
 int sa0 ;
 int stub1 (int *,int *) ;
 TYPE_3__* wd ;
 int zfRxBufferEqualToStr (int *,int *,int*,scalar_t__,int) ;
 int zfSendMmFrame (int *,int ,int *,int,int ,int ) ;
 scalar_t__ zfStaIsConnected (int *) ;
 int zmw_cpu_to_le16 (int ) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;
 int zmw_rx_buf_readh (int *,int *,scalar_t__) ;

u16_t zfStaRxValidateFrame(zdev_t* dev, zbuf_t* buf)
{
    u8_t frameType, frameCtrl;
    u8_t da0;

    u16_t ret;
    u16_t i;


    zmw_get_wlan_dev(dev);

    frameType = zmw_rx_buf_readb(dev, buf, 0);
    da0 = zmw_rx_buf_readb(dev, buf, ZM_WLAN_HEADER_A1_OFFSET);


    if ( (!zfStaIsConnected(dev))&&((frameType & 0xf) == ZM_WLAN_DATA_FRAME) )
    {
        return ZM_ERR_DATA_BEFORE_CONNECTED;
    }


    if ( (zfStaIsConnected(dev))&&((frameType & 0xf) == ZM_WLAN_DATA_FRAME) )
    {

        if ( wd->wlanMode == ZM_MODE_INFRASTRUCTURE )
        {

            u16_t mac[3];
            mac[0] = zmw_cpu_to_le16(wd->sta.bssid[0]);
            mac[1] = zmw_cpu_to_le16(wd->sta.bssid[1]);
            mac[2] = zmw_cpu_to_le16(wd->sta.bssid[2]);
            if ( !zfRxBufferEqualToStr(dev, buf, (u8_t *)mac,
                                       ZM_WLAN_HEADER_A2_OFFSET, 6) )
            {
                return ZM_ERR_DATA_BSSID_NOT_MATCHED;
            }
        }
        else if ( wd->wlanMode == ZM_MODE_IBSS )
        {

            u16_t mac[3];
            mac[0] = zmw_cpu_to_le16(wd->sta.bssid[0]);
            mac[1] = zmw_cpu_to_le16(wd->sta.bssid[1]);
            mac[2] = zmw_cpu_to_le16(wd->sta.bssid[2]);
            if ( !zfRxBufferEqualToStr(dev, buf, (u8_t *)mac,
                                       ZM_WLAN_HEADER_A3_OFFSET, 6) )
            {
                return ZM_ERR_DATA_BSSID_NOT_MATCHED;
            }
        }

        frameCtrl = zmw_rx_buf_readb(dev, buf, 1);


        if ( wd->sta.dropUnencryptedPkts &&
             (wd->sta.wepStatus != ZM_ENCRYPTION_WEP_DISABLED )&&
             ( !(frameCtrl & ZM_BIT_6) ) )
        {


            ret = ZM_ERR_DATA_NOT_ENCRYPTED;
            if ( wd->sta.pStaRxSecurityCheckCb != ((void*)0) )
            {
                ret = wd->sta.pStaRxSecurityCheckCb(dev, buf);
            }
            else
            {
                ret = ZM_ERR_DATA_NOT_ENCRYPTED;
            }
            if (ret == ZM_ERR_DATA_NOT_ENCRYPTED)
            {
                wd->commTally.swRxDropUnencryptedCount++;
            }
            return ret;







        }
    }

    return ZM_SUCCESS;
}
