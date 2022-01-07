
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u32_t ;
typedef int u16_t ;
struct agg_tid_rx {int dummy; } ;
struct TYPE_3__ {scalar_t__ EnableHT; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;


 int ZM_SEQ_DEBUG (char*,int,int) ;
 int ZM_WLAN_DATA_FRAME ;
 TYPE_2__* wd ;
 struct agg_tid_rx* zfAggRxGetQueue (int *,int *) ;
 int zfApFindSta (int *,int*) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

struct agg_tid_rx* zfAggRxEnabled(zdev_t* dev, zbuf_t* buf)
{
    u16_t dst0, src[3], ac, aid, fragOff;
    u8_t up;
    u16_t offset = 0;
    u16_t seq_no;
    u16_t frameType;
    u16_t frameCtrl;
    u16_t frameSubtype;
    u32_t tcp_seq;




    zmw_get_wlan_dev(dev);


    seq_no = zmw_rx_buf_readh(dev, buf, 22) >> 4;

    if (wd->sta.EnableHT == 0)
    {
        return ((void*)0);
    }

    frameCtrl = zmw_rx_buf_readb(dev, buf, 0);
    frameType = frameCtrl & 0xf;
    frameSubtype = frameCtrl & 0xf0;


    if (frameType != ZM_WLAN_DATA_FRAME)
    {
        return ((void*)0);
    }







    ZM_SEQ_DEBUG("In                   %5d, %12u\n", seq_no, tcp_seq);
    dst0 = zmw_rx_buf_readh(dev, buf, offset+4);

    src[0] = zmw_rx_buf_readh(dev, buf, offset+10);
    src[1] = zmw_rx_buf_readh(dev, buf, offset+12);
    src[2] = zmw_rx_buf_readh(dev, buf, offset+14);




    aid = zfApFindSta(dev, src);
    if ((dst0 & 0x1) == 0 && aid == 0)
    {
        return ((void*)0);

    }

    return ((void*)0);
}
