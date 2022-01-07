
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct aggBaFrameParameter {int ba_parameter; int ba_policy; int tid; int buffer_size; void* ba_timeout; void* status_code; int dialog; int * buf; } ;
struct TYPE_2__ {scalar_t__ wlanMode; int addbaComplete; } ;


 scalar_t__ ZM_MODE_AP ;
 int ZM_SUCCESS ;
 TYPE_1__* wd ;
 int* zcUpToAc ;
 int zfApFindSta (int *,int*) ;
 int zm_debug_msg2 (char*,int ) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readb (int *,int *,int) ;
 void* zmw_rx_buf_readh (int *,int *,int) ;

u16_t zfAggRecvAddbaResponse(zdev_t* dev, zbuf_t* buf)
{
    u16_t i,ac, aid=0;
    u16_t src[3];
    struct aggBaFrameParameter bf;

    zmw_get_wlan_dev(dev);



    src[0] = zmw_rx_buf_readh(dev, buf, 10);
    src[1] = zmw_rx_buf_readh(dev, buf, 12);
    src[2] = zmw_rx_buf_readh(dev, buf, 14);

    if (wd->wlanMode == ZM_MODE_AP)
        aid = zfApFindSta(dev, src);


    bf.buf = buf;
    bf.dialog = zmw_rx_buf_readb(dev, buf, 26);
    bf.status_code = zmw_rx_buf_readh(dev, buf, 27);
    if (!bf.status_code)
    {
        wd->addbaComplete=1;
    }




    bf.ba_parameter = zmw_rx_buf_readh(dev, buf, 29);
    bf.ba_policy = (bf.ba_parameter >> 1) & 1;
    bf.tid = (bf.ba_parameter >> 2) & 0xF;
    bf.buffer_size = (bf.ba_parameter >> 6);



    bf.ba_timeout = zmw_rx_buf_readh(dev, buf, 31);

    i=26;
    while(i < 32) {
        zm_debug_msg2("Recv ADDBA Rsp:", zmw_rx_buf_readb(dev,buf,i));
        i++;
    }

    ac = zcUpToAc[bf.tid&0x7] & 0x3;







    return ZM_SUCCESS;
}
