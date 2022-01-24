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
typedef  int /*<<< orphan*/  u8_t ;
typedef  int u16_t ;
struct aggBaFrameParameter {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_INTERNAL_ALLOC_BUF ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int ZM_SUCCESS ; 
 int err ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int*,int*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct aggBaFrameParameter*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int) ; 

u16_t   FUNC10(zdev_t* dev, struct aggBaFrameParameter *bf)
{
    zbuf_t* buf;
    //u16_t addrTblSize;
    //struct zsAddrTbl addrTbl;
    //u16_t err;
    u16_t offset = 0;
    u16_t hlen = 32;
    u16_t header[(24+25+1)/2];
    u16_t vap = 0;
    u16_t i;
    u8_t encrypt = 0;
    u16_t dst[3];

    //zmw_get_wlan_dev(dev);

    //zmw_declare_for_critical_section();


    /*
     * TBD : Maximum size of management frame
     */
    if ((buf = FUNC5(dev, 1024)) == NULL)
    {
        FUNC7(ZM_LV_0, "Alloc mm buf Fail!");
        return ZM_SUCCESS;
    }

    /*
     * Reserve room for wlan header
     */
    offset = hlen;

    /*
     * add addba frame body
     */
    offset = FUNC1(dev, buf, bf, offset);


    FUNC6(dev, buf, offset);

    /*
     * Copy wlan header
     */

    dst[0] = FUNC8(dev, bf->buf, 10);
    dst[1] = FUNC8(dev, bf->buf, 12);
    dst[2] = FUNC8(dev, bf->buf, 14);
    FUNC0(dev, dst, header, offset-hlen, buf, vap, encrypt);
    for (i=0; i<(hlen>>1); i++)
    {
        FUNC9(dev, buf, i*2, header[i]);
    }

    /* Get buffer DMA address */
    //if ((addrTblSize = zfwBufMapDma(dev, buf, &addrTbl)) == 0)
    //if ((addrTblSize = zfwMapTxDma(dev, buf, &addrTbl)) == 0)
    //{
    //    goto zlError;
    //}

    //zm_msg2_mm(ZM_LV_2, "offset=", offset);
    //zm_msg2_mm(ZM_LV_2, "hlen=", hlen);
    //zm_msg2_mm(ZM_LV_2, "addrTblSize=", addrTblSize);
    //zm_msg2_mm(ZM_LV_2, "addrTbl.len[0]=", addrTbl.len[0]);
    //zm_msg2_mm(ZM_LV_2, "addrTbl.physAddrl[0]=", addrTbl.physAddrl[0]);
    //zm_msg2_mm(ZM_LV_2, "buf->data=", buf->data);

    #if 0
    if ((err = zfHpSend(dev, NULL, 0, NULL, 0, NULL, 0, buf, 0,
            ZM_INTERNAL_ALLOC_BUF, 0, 0xff)) != ZM_SUCCESS)
    {
        goto zlError;
    }
    #else
    FUNC4(dev, buf);
    FUNC3(dev);
    #endif

    //zfAggSendAddbaRequest(dev, dst, zcUpToAc[bf->tid&0x7] & 0x3, bf->tid);
    return ZM_SUCCESS;

}