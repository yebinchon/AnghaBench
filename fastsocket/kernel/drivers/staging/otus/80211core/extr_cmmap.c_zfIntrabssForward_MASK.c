#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  scalar_t__ u8_t ;
typedef  int u16_t ;

/* Variables and functions */
 int ZM_ERR_TX_PORT_DISABLED ; 
 int /*<<< orphan*/  ZM_INTERNAL_ALLOC_BUF ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int /*<<< orphan*/  ZM_LV_2 ; 
 int ZM_PORT_DISABLED ; 
 int /*<<< orphan*/  ZM_RX_FRAME_SIZE ; 
 int ZM_STATE_ASOC ; 
 int ZM_WLAN_HEADER_A1_OFFSET ; 
 int ZM_WLAN_HEADER_A2_OFFSET ; 
 int ZM_WLAN_HEADER_A3_OFFSET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

u16_t FUNC13(zdev_t* dev, zbuf_t* buf, u8_t srcVap)
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
#ifdef ZM_ENABLE_NATIVE_WIFI
    dst[0] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A3_OFFSET);
    dst[1] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A3_OFFSET+2);
    dst[2] = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A3_OFFSET+4);
#else
    dst[0] = FUNC11(dev, buf, 0);
    dst[1] = FUNC11(dev, buf, 2);
    dst[2] = FUNC11(dev, buf, 4);
#endif  // ZM_ENABLE_NATIVE_WIFI

    /* Do Intra-BSS forward(data copy) if necessary*/
    if ((dst[0]&0x1) != 0x1)
    {
        aid = FUNC1(dev, dst, &staState, &vap);
        if ((aid != 0xffff) && (staState == ZM_STATE_ASOC) && (srcVap == vap))
        {
            asocFlag = 1;
            FUNC10(ZM_LV_2, "Intra-BSS forward : asoc STA");
        }

    }
    else
    {
        vap = srcVap;
        FUNC10(ZM_LV_2, "Intra-BSS forward : BCorMC");
    }

    /* destination address = associated STA or BC/MC */
    if ((asocFlag == 1) || ((dst[0]&0x1) == 0x1))
    {
        /* Allocate frame */
        if ((txBuf = FUNC6(dev, ZM_RX_FRAME_SIZE))
                == NULL)
        {
            FUNC10(ZM_LV_1, "Alloc intra-bss buf Fail!");
            goto zlAllocError;
        }

        /* Copy frame */
        len = FUNC8(dev, buf);
        for (i=0; i<len; i+=2)
        {
            temp = FUNC11(dev, buf, i);
            FUNC12(dev, txBuf, i, temp);
        }
        FUNC9(dev, txBuf, len);

#ifdef ZM_ENABLE_NATIVE_WIFI
        /* Tx-A2 = Rx-A1, Tx-A3 = Rx-A2, Tx-A1 = Rx-A3 */
        for (i=0; i<6; i+=2)
        {
            temp = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A1_OFFSET+i);
            zmw_tx_buf_writeh(dev, txBuf, ZM_WLAN_HEADER_A2_OFFSET+i, temp);
            temp = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A2_OFFSET+i);
            zmw_tx_buf_writeh(dev, txBuf, ZM_WLAN_HEADER_A3_OFFSET+i, temp);
            temp = zmw_rx_buf_readh(dev, buf, ZM_WLAN_HEADER_A3_OFFSET+i);
            zmw_tx_buf_writeh(dev, txBuf, ZM_WLAN_HEADER_A1_OFFSET+i, temp);
        }

        #endif

        /* Transmit frame */
        /* Return error if port is disabled */
        if ((err = FUNC4(dev, txBuf, vap)) == ZM_PORT_DISABLED)
        {
            err = ZM_ERR_TX_PORT_DISABLED;
            goto zlTxError;
        }

#if 1
        /* AP : Buffer frame for power saving STA */
        if ((ret = FUNC0(dev, txBuf, vap)) == 0)
        {
            /* forward frame if not been buffered */
            #if 1
            /* Put to VTXQ[ac] */
            ret = FUNC3(dev, txBuf);
            /* Push VTXQ[ac] */
            FUNC2(dev);
            #else
            zfTxSendEth(dev, txBuf, vap, ZM_INTERNAL_ALLOC_BUF, 0);
            #endif

        }
#endif
    }
    return asocFlag;

zlTxError:
    FUNC7(dev, txBuf, 0);
zlAllocError:
    return asocFlag;
}