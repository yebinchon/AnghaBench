
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u8_t ;
typedef int u16_t ;


 int ZM_ERR_TX_PORT_DISABLED ;
 int ZM_INTERNAL_ALLOC_BUF ;
 int ZM_LV_1 ;
 int ZM_LV_2 ;
 int ZM_PORT_DISABLED ;
 int ZM_RX_FRAME_SIZE ;
 int ZM_STATE_ASOC ;
 int ZM_WLAN_HEADER_A1_OFFSET ;
 int ZM_WLAN_HEADER_A2_OFFSET ;
 int ZM_WLAN_HEADER_A3_OFFSET ;
 int zfApBufferPsFrame (int *,int *,scalar_t__) ;
 int zfApGetSTAInfo (int *,int*,int*,scalar_t__*) ;
 int zfPushVtxq (int *) ;
 int zfPutVtxq (int *,int *) ;
 int zfTxPortControl (int *,int *,scalar_t__) ;
 int zfTxSendEth (int *,int *,scalar_t__,int ,int ) ;
 int * zfwBufAllocate (int *,int ) ;
 int zfwBufFree (int *,int *,int ) ;
 int zfwBufGetSize (int *,int *) ;
 int zfwBufSetSize (int *,int *,int) ;
 int zm_msg0_rx (int ,char*) ;
 int zmw_rx_buf_readh (int *,int *,int) ;
 int zmw_tx_buf_writeh (int *,int *,int,int) ;

u16_t zfIntrabssForward(zdev_t* dev, zbuf_t* buf, u8_t srcVap)
{
    u16_t err;
    u16_t asocFlag = 0;
    u16_t dst[3];
    u16_t aid;
    u16_t staState;
    zbuf_t* txBuf;
    u16_t len;
    u16_t i;
    u16_t temp;
    u16_t ret;
    u8_t vap = 0;





    dst[0] = zmw_rx_buf_readh(dev, buf, 0);
    dst[1] = zmw_rx_buf_readh(dev, buf, 2);
    dst[2] = zmw_rx_buf_readh(dev, buf, 4);



    if ((dst[0]&0x1) != 0x1)
    {
        aid = zfApGetSTAInfo(dev, dst, &staState, &vap);
        if ((aid != 0xffff) && (staState == ZM_STATE_ASOC) && (srcVap == vap))
        {
            asocFlag = 1;
            zm_msg0_rx(ZM_LV_2, "Intra-BSS forward : asoc STA");
        }

    }
    else
    {
        vap = srcVap;
        zm_msg0_rx(ZM_LV_2, "Intra-BSS forward : BCorMC");
    }


    if ((asocFlag == 1) || ((dst[0]&0x1) == 0x1))
    {

        if ((txBuf = zfwBufAllocate(dev, ZM_RX_FRAME_SIZE))
                == ((void*)0))
        {
            zm_msg0_rx(ZM_LV_1, "Alloc intra-bss buf Fail!");
            goto zlAllocError;
        }


        len = zfwBufGetSize(dev, buf);
        for (i=0; i<len; i+=2)
        {
            temp = zmw_rx_buf_readh(dev, buf, i);
            zmw_tx_buf_writeh(dev, txBuf, i, temp);
        }
        zfwBufSetSize(dev, txBuf, len);
        if ((err = zfTxPortControl(dev, txBuf, vap)) == ZM_PORT_DISABLED)
        {
            err = ZM_ERR_TX_PORT_DISABLED;
            goto zlTxError;
        }



        if ((ret = zfApBufferPsFrame(dev, txBuf, vap)) == 0)
        {



            ret = zfPutVtxq(dev, txBuf);

            zfPushVtxq(dev);




        }

    }
    return asocFlag;

zlTxError:
    zfwBufFree(dev, txBuf, 0);
zlAllocError:
    return asocFlag;
}
