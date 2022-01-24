#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  int u16_t ;
struct zsHpPriv {int /*<<< orphan*/ * usbAcSendBytes; int /*<<< orphan*/  usbSendBytes; } ;
struct TYPE_2__ {struct zsHpPriv* hpPrivate; } ;

/* Variables and functions */
 int EXTRA_INFO_LEN ; 
 int /*<<< orphan*/  USB_ENDPOINT_TX_INDEX ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int ZM_SUCCESS ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int*,int,int*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

u16_t FUNC12(zdev_t* dev, u16_t* header, u16_t headerLen,
                u16_t* snap, u16_t snapLen,
                u16_t* tail, u16_t tailLen, zbuf_t* buf, u16_t offset,
                u16_t bufType, u8_t ac, u8_t keyIdx)
{
#if ZM_SW_LOOP_BACK == 1
    zbuf_t *rxbuf;
    u8_t *puRxBuf;
    u8_t *pHdr;
	   u8_t *psnap;
	   u16_t plcplen = 12;
    u16_t i;
   	u16_t swlpOffset;
#endif /* #if ZM_SW_LOOP_BACK == 1 */
    struct zsHpPriv* hpPriv;

    FUNC8(dev);
    hpPriv=wd->hpPrivate;

    FUNC6(ZM_LV_1, "zfHpSend(), len = ", 12 + headerLen-8 + snapLen + FUNC3(dev, buf) + 4 + 8);

	/* Adjust ctrl setting : 6N14 yjsung */
    FUNC0(dev, header, buf);

#if ZM_SW_LOOP_BACK != 1
    hpPriv->usbSendBytes += FUNC3(dev, buf);
    hpPriv->usbAcSendBytes[ac&0x3] += FUNC3(dev, buf);

    /* Submit USB Out Urb */
    FUNC5(dev, USB_ENDPOINT_TX_INDEX, (u8_t *)header, headerLen,
                  (u8_t *)snap, snapLen, (u8_t *)tail, tailLen, buf, offset);
#endif

#if ZM_SW_LOOP_BACK == 1

    rxbuf = zfwBufAllocate(dev, plcplen + headerLen-8 + snapLen + (zfwBufGetSize(dev, buf)-offset) + 4 + EXTRA_INFO_LEN);
    pHdr = (u8_t *) header+8;
   	psnap = (u8_t *) snap;

    zmw_enter_critical_section(dev);
    /* software loop back */
    /* Copy WLAN header and packet buffer */
   	swlpOffset = plcplen;

    for(i = 0; i < headerLen-8; i++)
    {
        zmw_rx_buf_writeb(dev, rxbuf, swlpOffset+i, pHdr[i]);
    }

   	swlpOffset += headerLen-8;

    /* Copy SNAP header */
    for(i = 0; i < snapLen; i++)
    {
		      zmw_rx_buf_writeb(dev, rxbuf, swlpOffset+i, psnap[i]);
    }

	   swlpOffset += snapLen;

    /* Copy body from tx buf to rxbuf */
    for(i = 0; i < (zfwBufGetSize(dev, buf)-offset); i++)
    {
        u8_t value = zmw_rx_buf_readb(dev, buf, i+offset);
        zmw_rx_buf_writeb(dev, rxbuf, swlpOffset+i, value);
    }

	   /* total length = PLCP +         MacHeader       + Payload   + FCS + RXstatus */
	   /*                 12  +  headerLen-8  + snapLen + buf length + 4  + 8        */
   	zfwSetBufSetSize(dev, rxbuf, swlpOffset + (zfwBufGetSize(dev, buf)-offset) + 4 + EXTRA_INFO_LEN );

    zmw_leave_critical_section(dev);

    zfwBufFree(dev, buf, 0);

	   //zfwDumpBuf(dev, rxbuf);
	   //-------------------------------------------------

    //zfCoreRecv(dev, rxbuf);

#endif /* #if ZM_SW_LOOP_BACK */

    return ZM_SUCCESS;
}