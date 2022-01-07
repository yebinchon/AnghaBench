
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct aggBaFrameParameter {int ba_parameter; int ba_policy; int tid; int buffer_size; int ba_timeout; int ba_start_seq; int dialog; int * buf; } ;


 int ZM_SUCCESS ;
 int zfAggAddbaSetTidRx (int *,int *,struct aggBaFrameParameter*) ;
 int zfAggSendAddbaResponse (int *,struct aggBaFrameParameter*) ;
 int zm_debug_msg2 (char*,int ) ;
 int zmw_rx_buf_readb (int *,int *,int) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

u16_t zfAggRecvAddbaRequest(zdev_t* dev, zbuf_t* buf)
{

    struct aggBaFrameParameter bf;
    u16_t i;




    bf.buf = buf;
    bf.dialog = zmw_rx_buf_readb(dev, buf, 26);



    bf.ba_parameter = zmw_rx_buf_readh(dev, buf, 27);
    bf.ba_policy = (bf.ba_parameter >> 1) & 1;
    bf.tid = (bf.ba_parameter >> 2) & 0xF;
    bf.buffer_size = (bf.ba_parameter >> 6);



    bf.ba_timeout = zmw_rx_buf_readh(dev, buf, 29);



    bf.ba_start_seq = zmw_rx_buf_readh(dev, buf, 31) >> 4;

    i=26;
    while(i < 32) {
        zm_debug_msg2("Recv ADDBA Req:", zmw_rx_buf_readb(dev,buf,i));
        i++;
    }

    zfAggSendAddbaResponse(dev, &bf);

    zfAggAddbaSetTidRx(dev, buf, &bf);

    return ZM_SUCCESS;
}
