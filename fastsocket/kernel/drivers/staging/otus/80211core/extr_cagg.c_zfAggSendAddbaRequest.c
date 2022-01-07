
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;


 int ZM_INTERNAL_ALLOC_BUF ;
 int ZM_LV_0 ;
 int ZM_SUCCESS ;
 int err ;
 int zfAggGenAddbaHeader (int *,int*,int*,int,int *,int,int ) ;
 int zfAggSetAddbaFrameBody (int *,int *,int,int,int) ;
 int zfHpSend (int *,int *,int ,int *,int ,int *,int ,int *,int ,int ,int ,int) ;
 int zfPushVtxq (int *) ;
 int zfPutVmmq (int *,int *) ;
 int * zfwBufAllocate (int *,int) ;
 int zfwBufSetSize (int *,int *,int) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_tx_buf_writeh (int *,int *,int,int) ;

u16_t zfAggSendAddbaRequest(zdev_t* dev, u16_t *dst, u16_t ac, u16_t up)
{
    zbuf_t* buf;



    u16_t offset = 0;
    u16_t hlen = 32;
    u16_t header[(24+25+1)/2];
    u16_t vap = 0;
    u16_t i;
    u8_t encrypt = 0;
    if ((buf = zfwBufAllocate(dev, 1024)) == ((void*)0))
    {
        zm_msg0_mm(ZM_LV_0, "Alloc mm buf Fail!");
        return ZM_SUCCESS;
    }




    offset = hlen;




    offset = zfAggSetAddbaFrameBody(dev, buf, offset, ac, up);


    zfwBufSetSize(dev, buf, offset);




    zfAggGenAddbaHeader(dev, dst, header, offset-hlen, buf, vap, encrypt);
    for (i=0; i<(hlen>>1); i++)
    {
        zmw_tx_buf_writeh(dev, buf, i*2, header[i]);
    }
    zfPutVmmq(dev, buf);
    zfPushVtxq(dev);


    return ZM_SUCCESS;

}
