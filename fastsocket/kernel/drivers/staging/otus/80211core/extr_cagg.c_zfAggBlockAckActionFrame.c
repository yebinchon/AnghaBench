
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int ZM_LV_0 ;
 int ZM_SUCCESS ;



 int zfAggRecvAddbaRequest (int *,int *) ;
 int zfAggRecvAddbaResponse (int *,int *) ;
 int zfAggRecvDelba (int *,int *) ;
 int zm_msg0_agg (int ,char*) ;
 int zmw_rx_buf_readb (int *,int *,int) ;

u16_t zfAggBlockAckActionFrame(zdev_t* dev, zbuf_t* buf)
{
    u8_t action;





    action = zmw_rx_buf_readb(dev, buf, 25);
    return ZM_SUCCESS;
}
