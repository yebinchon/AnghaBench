
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
struct TYPE_4__ {int wdsBitmap; int** macAddr; } ;
struct TYPE_5__ {TYPE_1__ wds; } ;
struct TYPE_6__ {TYPE_2__ ap; } ;


 int ZM_ERR_STA_NOT_ASSOCIATED ;
 int ZM_MAX_WDS_SUPPORT ;
 int ZM_STATE_ASOC ;
 int ZM_SUCCESS ;
 int ZM_WLAN_FRAME_TYPE_DEAUTH ;
 TYPE_3__* wd ;
 int zfApGetSTAInfoAndUpdatePs (int *,int*,int*,int*,int,int*) ;
 int zfSendMmFrame (int *,int ,int*,int,int ,int ) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

u16_t zfApUpdatePsBit(zdev_t* dev, zbuf_t* buf, u8_t* vap, u8_t* uapsdTrig)
{
    u16_t staState;
    u16_t aid;
    u16_t psBit;
    u16_t src[3];
    u16_t dst[1];
    u16_t i;

    zmw_get_wlan_dev(dev);

    src[0] = zmw_rx_buf_readh(dev, buf, 10);
    src[1] = zmw_rx_buf_readh(dev, buf, 12);
    src[2] = zmw_rx_buf_readh(dev, buf, 14);

    if ((zmw_rx_buf_readb(dev, buf, 1) & 0x3) != 3)
    {

        dst[0] = zmw_rx_buf_readh(dev, buf, 4);

        psBit = (zmw_rx_buf_readb(dev, buf, 1) & 0x10) >> 4;

        aid = zfApGetSTAInfoAndUpdatePs(dev, src, &staState, vap, psBit, uapsdTrig);


        if ((aid == 0xffff) || (staState != ZM_STATE_ASOC))
        {
            if ((dst[0]&0x1)==0)
            {
                zfSendMmFrame(dev, ZM_WLAN_FRAME_TYPE_DEAUTH, src, 0x7,
                        0, 0);
            }

            return ZM_ERR_STA_NOT_ASSOCIATED;
        }
    }
    else
    {

        for (i=0; i<ZM_MAX_WDS_SUPPORT; i++)
        {
            if ((wd->ap.wds.wdsBitmap & (1<<i)) != 0)
            {
                if ((src[0] == wd->ap.wds.macAddr[i][0])
                        && (src[1] == wd->ap.wds.macAddr[i][1])
                        && (src[2] == wd->ap.wds.macAddr[i][2]))
                {
                    *vap = 0x20 + i;
                    break;
                }
            }
        }
    }
    return ZM_SUCCESS;
}
