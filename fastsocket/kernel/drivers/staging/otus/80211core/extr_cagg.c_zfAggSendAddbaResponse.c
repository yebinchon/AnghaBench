
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct aggBaFrameParameter {int buf; } ;


 int ZM_INTERNAL_ALLOC_BUF ;
 int ZM_LV_0 ;
 int ZM_SUCCESS ;
 int err ;
 int zfAggGenAddbaHeader (int *,int*,int*,int,int *,int,int ) ;
 int zfAggSetAddbaResponseFrameBody (int *,int *,struct aggBaFrameParameter*,int) ;
 int zfHpSend (int *,int *,int ,int *,int ,int *,int ,int *,int ,int ,int ,int) ;
 int zfPushVtxq (int *) ;
 int zfPutVmmq (int *,int *) ;
 int * zfwBufAllocate (int *,int) ;
 int zfwBufSetSize (int *,int *,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_rx_buf_readh (int *,int ,int) ;
 int zmw_tx_buf_writeh (int *,int *,int,int) ;

u16_t zfAggSendAddbaResponse(zdev_t* dev, struct aggBaFrameParameter *bf)
{
    zbuf_t* buf;



    u16_t offset = 0;
    u16_t hlen = 32;
    u16_t header[(24+25+1)/2];
    u16_t vap = 0;
    u16_t i;
    u8_t encrypt = 0;
    u16_t dst[3];
    if ((buf = zfwBufAllocate(dev, 1024)) == ((void*)0))
    {
        zm_msg0_mm(ZM_LV_0, "Alloc mm buf Fail!");
        return ZM_SUCCESS;
    }




    offset = hlen;




    offset = zfAggSetAddbaResponseFrameBody(dev, buf, bf, offset);


    zfwBufSetSize(dev, buf, offset);





    dst[0] = zmw_rx_buf_readh(dev, bf->buf, 10);
    dst[1] = zmw_rx_buf_readh(dev, bf->buf, 12);
    dst[2] = zmw_rx_buf_readh(dev, bf->buf, 14);
    zfAggGenAddbaHeader(dev, dst, header, offset-hlen, buf, vap, encrypt);
    for (i=0; i<(hlen>>1); i++)
    {
        zmw_tx_buf_writeh(dev, buf, i*2, header[i]);
    }
    zfPutVmmq(dev, buf);
    zfPushVtxq(dev);



    return ZM_SUCCESS;

}
