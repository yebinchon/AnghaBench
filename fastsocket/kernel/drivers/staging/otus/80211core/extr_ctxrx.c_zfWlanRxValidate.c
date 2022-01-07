
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
struct TYPE_3__ {int enableDrvBA; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;


 int ZM_ERR_MAX_RX_FRAME_LENGTH ;
 int ZM_ERR_MIN_RX_ENCRYPT_FRAME_LENGTH ;
 int ZM_ERR_MIN_RX_FRAME_LENGTH ;
 int ZM_ERR_RX_BAR_FRAME ;
 int ZM_ERR_RX_FRAME_TYPE ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_PSEUDO ;
 int ZM_SUCCESS ;
 int ZM_WLAN_FRAME_TYPE_BAR ;
 int ZM_WLAN_MAX_RX_SIZE ;
 TYPE_2__* wd ;
 int zfAggRecvBAR (int *,int *) ;
 int zfStaRxValidateFrame (int *,int *) ;
 int zfwBufGetSize (int *,int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readh (int *,int *,int ) ;

u16_t zfWlanRxValidate(zdev_t* dev, zbuf_t* buf)
{
    u16_t frameType;
    u16_t frameCtrl;
    u16_t frameLen;
    u16_t ret;
    u8_t frameSubType;

    zmw_get_wlan_dev(dev);

    frameCtrl = zmw_rx_buf_readh(dev, buf, 0);
    frameType = frameCtrl & 0xC;
    frameSubType = (frameCtrl & 0xF0) >> 4;

    frameLen = zfwBufGetSize(dev, buf);


    if ((frameType == 0x8) || (frameType == 0x0))
    {




        if ((frameCtrl & 0x4000) != 0)
        {


            if (frameLen < 32)
            {
                return ZM_ERR_MIN_RX_ENCRYPT_FRAME_LENGTH;
            }
        }
        else if ( frameSubType == 0x5 || frameSubType == 0x8 )
        {

            if (frameLen < 36)
            {
                return ZM_ERR_MIN_RX_FRAME_LENGTH;
            }
        }
        else
        {

            if (frameLen < 24)
            {
                return ZM_ERR_MIN_RX_FRAME_LENGTH;
            }
        }


        if (frameLen > ZM_WLAN_MAX_RX_SIZE)
        {
            return ZM_ERR_MAX_RX_FRAME_LENGTH;
        }
    }
    else if ((frameCtrl&0xff) == 0xa4)
    {


    }
    else if ((frameCtrl&0xff) == ZM_WLAN_FRAME_TYPE_BAR)
    {
        if (wd->sta.enableDrvBA == 1)
        {
            zfAggRecvBAR(dev, buf);
        }

        return ZM_ERR_RX_BAR_FRAME;
    }
    else
    {
        return ZM_ERR_RX_FRAME_TYPE;
    }

    if ( wd->wlanMode == ZM_MODE_AP )
    {
    }
    else if ( wd->wlanMode != ZM_MODE_PSEUDO )
    {
        if ( (ret=zfStaRxValidateFrame(dev, buf))!=ZM_SUCCESS )
        {

            return ret;
        }
    }

    return ZM_SUCCESS;
}
