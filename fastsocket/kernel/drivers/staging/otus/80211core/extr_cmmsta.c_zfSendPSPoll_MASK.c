#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u16_t ;
struct TYPE_3__ {int aid; int /*<<< orphan*/  bssid; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_INTERNAL_ALLOC_BUF ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int ZM_SUCCESS ; 
 int /*<<< orphan*/  ZM_WLAN_FRAME_TYPE_PSPOLL ; 
 TYPE_2__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zdev_t* dev)
{
    zbuf_t* buf;
    //u16_t addrTblSize;
    //struct zsAddrTbl addrTbl;
    u16_t err;
    u16_t hlen;
    u16_t header[(8+24+1)/2];

    FUNC6(dev);

    if ((buf = FUNC2(dev, 1024)) == NULL)
    {
        FUNC5(ZM_LV_0, "Alloc mm buf Fail!");
        return;
    }

    FUNC4(dev, buf, 0);

    //zm_msg2_mm(ZM_LV_2, "buf->len=", buf->len);

    FUNC1(dev, ZM_WLAN_FRAME_TYPE_PSPOLL, wd->sta.bssid, header, 0, buf, 0, 0);

    header[0] = 20;
    header[4] |= 0x1000;
    header[5] = wd->sta.aid | 0xc000; //Both bit-14 and bit-15 are 1
    hlen = 16 + 8;

    /* Get buffer DMA address */
    //if ((addrTblSize = zfwBufMapDma(dev, buf, &addrTbl)) == 0)
    //if ((addrTblSize = zfwMapTxDma(dev, buf, &addrTbl)) == 0)
    //{
    //    goto zlError;
    //}

    if ((err = FUNC0(dev, header, hlen, NULL, 0, NULL, 0, buf, 0,
            ZM_INTERNAL_ALLOC_BUF, 0, 0xff)) != ZM_SUCCESS)
    {
        goto zlError;
    }

    return;

zlError:

    FUNC3(dev, buf, 0);
    return;

}