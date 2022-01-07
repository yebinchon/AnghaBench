
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
struct TYPE_3__ {int apBitmap; scalar_t__* hideSsid; int* ssidLen; scalar_t__** ssid; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ ap; } ;


 int ZM_LV_3 ;
 int ZM_MAX_AP_SUPPORT ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 int ZM_WLAN_EID_SSID ;
 int ZM_WLAN_FRAME_TYPE_PROBERSP ;
 TYPE_2__* wd ;
 int zfFindElement (int *,int *,int ) ;
 int zfSendMmFrame (int *,int ,int*,int,int ,int ) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_get_wlan_dev (int *) ;
 scalar_t__ zmw_rx_buf_readb (int *,int *,int) ;

void zfStaProcessProbeReq(zdev_t* dev, zbuf_t* buf, u16_t* src)
{
    u16_t offset;
    u8_t len;
    u16_t i, j;
    u16_t sendFlag;

    zmw_get_wlan_dev(dev);


    if ((wd->wlanMode != ZM_MODE_AP) || (wd->wlanMode != ZM_MODE_IBSS))
    {
        zm_msg0_mm(ZM_LV_3, "Ignore probe req");
        return;
    }


    if ((offset = zfFindElement(dev, buf, ZM_WLAN_EID_SSID)) == 0xffff)
    {
        zm_msg0_mm(ZM_LV_3, "probe req SSID not found");
        return;
    }

    len = zmw_rx_buf_readb(dev, buf, offset+1);

    for (i=0; i<ZM_MAX_AP_SUPPORT; i++)
    {
        if ((wd->ap.apBitmap & (i<<i)) != 0)
        {
            sendFlag = 0;

            if ((len == 0) && (wd->ap.hideSsid[i] == 0))
            {
                sendFlag = 1;
            }

            else if (wd->ap.ssidLen[i] == len)
            {
                for (j=0; j<len; j++)
                {
                    if (zmw_rx_buf_readb(dev, buf, offset+1+j)
                            != wd->ap.ssid[i][j])
                    {
                        break;
                    }
                }
                if (j == len)
                {
                    sendFlag = 1;
                }
            }
            if (sendFlag == 1)
            {

                zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_PROBERSP, src, i, 0, 0);
            }
        }
    }
}
