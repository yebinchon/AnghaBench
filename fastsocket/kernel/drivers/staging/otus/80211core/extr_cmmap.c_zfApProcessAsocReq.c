
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
struct TYPE_3__ {int vapNumber; int* ssidLen; int** ssid; scalar_t__* wlanType; scalar_t__ uapsdEnabled; int* wpaSupport; int* stawpaLen; int * stawpaIe; } ;
struct TYPE_4__ {TYPE_1__ ap; int (* zfcbCencAsocNotify ) (int *,int*,int ,int,int) ;int (* zfcbAsocNotify ) (int *,int*,int ,int,int) ;} ;


 int ZM_LV_0 ;
 int ZM_MAX_WPAIE_SIZE ;
 int ZM_STATE_ASOC ;
 int ZM_WLAN_EID_CENC_IE ;
 int ZM_WLAN_EID_EXTENDED_RATE ;
 int ZM_WLAN_EID_HT_CAPABILITY ;
 int ZM_WLAN_EID_RSN_IE ;
 int ZM_WLAN_EID_SSID ;
 int ZM_WLAN_EID_WPA_IE ;
 int ZM_WLAN_FRAME_TYPE_ASOCREQ ;
 int ZM_WLAN_FRAME_TYPE_ASOCRSP ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 int ZM_WLAN_FRAME_TYPE_REASOCRSP ;
 scalar_t__ ZM_WLAN_TYPE_PURE_B ;
 scalar_t__ ZM_WLAN_TYPE_PURE_G ;
 int stub1 (int *,int*,int ,int,int) ;
 int stub2 (int *,int*,int ,int,int) ;
 int stub3 (int *,int*,int ,int,int) ;
 TYPE_2__* wd ;
 int zfApAddSta (int *,int*,int ,int,int,int,int) ;
 int zfApStoreAsocReqIe (int *,int *,int) ;
 int zfCopyFromRxBuffer (int *,int *,int ,int,int) ;
 int zfFindElement (int *,int *,int ) ;
 int zfFindWifiElement (int *,int *,int,int ) ;
 int zfSendMmFrame (int *,int ,int*,int,int,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zm_msg1_mm (int ,char*,int) ;
 int zmw_buf_readb (int *,int *,int) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

void zfApProcessAsocReq(zdev_t* dev, zbuf_t* buf, u16_t* src, u16_t apId)
{
    u16_t aid = 0xffff;
    u8_t frameType;
    u16_t offset;
    u8_t staType = 0;
    u8_t qosType = 0;
    u8_t qosInfo = 0;
    u8_t tmp;
    u16_t i, j, k;
    u16_t encMode = 0;

    zmw_get_wlan_dev(dev);

    if ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_SSID)) != 0xffff)
    {
        k = 0;
        for (j = 0; j < wd->ap.vapNumber; j++)
        {
            if ((tmp = zmw_buf_readb(dev, buf, offset+1))
                        != wd->ap.ssidLen[j])
            {
                k++;
            }
        }
        if (k == wd->ap.vapNumber)
        {
            goto zlDeauth;
        }

        k = 0;
        for (j = 0; j < wd->ap.vapNumber; j++)
        {
            for (i=0; i<wd->ap.ssidLen[j]; i++)
            {
                if ((tmp = zmw_buf_readb(dev, buf, offset+2+i))
                        != wd->ap.ssid[j][i])
                {
                    break;
                }
            }
            if (i == wd->ap.ssidLen[j])
            {
                apId = j;
            }
            else
            {
                k++;
            }
        }
        if (k == wd->ap.vapNumber)
        {
            goto zlDeauth;
        }
    }




    if ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_EXTENDED_RATE)) != 0xffff)
    {

        staType = 1;
    }

    if ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_HT_CAPABILITY)) != 0xffff)
    {

        staType = 2;
    }


    if (wd->ap.wlanType[apId] == ZM_WLAN_TYPE_PURE_G && staType == 0)
    {
        zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, src, 3, 0, 0);
        return;
    }


    if (wd->ap.wlanType[apId] == ZM_WLAN_TYPE_PURE_B && staType == 1)
    {
        staType = 0;
    }





    if ((offset = zfFindWifiElement(dev, buf, 2, 0)) != 0xffff)
    {

        qosType = 1;
        zm_msg0_mm(ZM_LV_0, "WME STA");

        if (wd->ap.uapsdEnabled != 0)
        {
            qosInfo = zmw_rx_buf_readb(dev, buf, offset+8);
        }
    }

    if (wd->ap.wpaSupport[apId] == 1)
    {
        if ( (offset = zfFindElement(dev, buf, ZM_WLAN_EID_WPA_IE)) != 0xffff )
        {

            u8_t length = zmw_rx_buf_readb(dev, buf, offset+1);
            if (length+2 < ZM_MAX_WPAIE_SIZE)
            {
                zfCopyFromRxBuffer(dev, buf, wd->ap.stawpaIe[apId], offset, length+2);
                wd->ap.stawpaLen[apId] = length+2;
                encMode = 1;


                zm_msg1_mm(ZM_LV_0, "WPA Mode zfwAsocNotify, apId=", apId);


                if (wd->zfcbAsocNotify != ((void*)0))
                {
                    wd->zfcbAsocNotify(dev, src, wd->ap.stawpaIe[apId], wd->ap.stawpaLen[apId], apId);
                }
            }
            else
            {
                goto zlDeauth;
            }
        }
        else if ( (offset = zfFindElement(dev, buf, ZM_WLAN_EID_RSN_IE)) != 0xffff )
        {

            u8_t length = zmw_rx_buf_readb(dev, buf, offset+1);
            if (length+2 < ZM_MAX_WPAIE_SIZE)
            {
                zfCopyFromRxBuffer(dev, buf, wd->ap.stawpaIe[apId], offset, length+2);
                wd->ap.stawpaLen[apId] = length+2;
                encMode = 1;

                zm_msg1_mm(ZM_LV_0, "RSN Mode zfwAsocNotify, apId=", apId);


                if (wd->zfcbAsocNotify != ((void*)0))
                {
                    wd->zfcbAsocNotify(dev, src, wd->ap.stawpaIe[apId], wd->ap.stawpaLen[apId], apId);
                }
            }
            else
            {
                goto zlDeauth;
            }
        }
        else
        {
            zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, src, 6, 0, 0);
            return;
        }
    }

    if ((wd->ap.wpaSupport[apId] == 0) && (encMode == 1))
    {
        zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, src, 6, 0, 0);
        return;
    }


    aid = zfApAddSta(dev, src, ZM_STATE_ASOC, apId, staType, qosType, qosInfo);

    zfApStoreAsocReqIe(dev, buf, aid);

zlDeauth:

    if (aid != 0xffff)
    {
        frameType = zmw_rx_buf_readb(dev, buf, 0);

        if (frameType == ZM_WLAN_FRAME_TYPE_ASOCREQ)
        {
            zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_ASOCRSP, src, 0, aid+1, apId);
        }
        else
        {
            zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_REASOCRSP, src, 0, aid+1, apId);
        }
    }
    else
    {

        zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, src, 6, 0, 0);
    }

    return;
}
