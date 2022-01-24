#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  size_t u8_t ;
typedef  size_t u16_t ;
struct TYPE_5__ {int* timBcmcBit; scalar_t__* bcmcTail; scalar_t__* bcmcHead; size_t uniHead; size_t uniTail; int /*<<< orphan*/  uapsdQ; TYPE_1__* staTable; int /*<<< orphan*/ ** uniArray; } ;
struct TYPE_6__ {scalar_t__ CurrentDtimCount; scalar_t__ dtim; TYPE_2__ ap; } ;
struct TYPE_4__ {scalar_t__ psMode; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_LV_3 ; 
 int ZM_UNI_ARRAY_SIZE ; 
 size_t ZM_WLAN_EID_TIM ; 
 TYPE_3__* wd ; 
 size_t FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t) ; 

u16_t FUNC15(zdev_t* dev, zbuf_t* buf, u16_t offset, u16_t vap)
{
    u8_t uniBitMap[9];
    u16_t highestByte;
    u16_t i;
    u16_t lenOffset;
    u16_t id;
    u16_t dst[3];
    u16_t aid;
    u16_t bitPosition;
    u16_t bytePosition;
    zbuf_t* psBuf;
    zbuf_t* tmpBufArray[ZM_UNI_ARRAY_SIZE];
    u16_t tmpBufArraySize = 0;

    FUNC11(dev);

    FUNC9();

    /* Element ID */
    FUNC14(dev, buf, offset++, ZM_WLAN_EID_TIM);

    /* offset of Element Length */
    lenOffset = offset++;

    /* Information : TIM */
    /* DTIM count */
    /* TODO : Doesn't work for Virtual AP's case */
    wd->CurrentDtimCount++;
    if (wd->CurrentDtimCount >= wd->dtim)
    {
        wd->CurrentDtimCount = 0;
    }
    FUNC14(dev, buf, offset++, wd->CurrentDtimCount);
    /* DTIM period */
    FUNC14(dev, buf, offset++, wd->dtim);
    /* bitmap offset */
    FUNC14(dev, buf, offset++, 0);

    /* Update BCMC bit */
    if (wd->CurrentDtimCount == 0)
    {
        FUNC10(dev);
        wd->ap.timBcmcBit[vap] = (wd->ap.bcmcTail[vap]!=wd->ap.bcmcHead[vap])?1:0;
        FUNC12(dev);
    }
    else
    {
        wd->ap.timBcmcBit[vap] = 0;
    }

    /* Update Unicast bitmap */
    /* reset bit map */
    for (i=0; i<9; i++)
    {
        uniBitMap[i] = 0;
    }
    highestByte = 0;
#if 1

    FUNC10(dev);

    id = wd->ap.uniHead;
    while (id != wd->ap.uniTail)
    {
        psBuf = wd->ap.uniArray[id];

        /* TODO : Aging PS frame after queuing for more than 10 seconds */

        /* get destination STA's aid */
        dst[0] = FUNC13(dev, psBuf, 0);
        dst[1] = FUNC13(dev, psBuf, 2);
        dst[2] = FUNC13(dev, psBuf, 4);
        if ((aid = FUNC0(dev, dst)) != 0xffff)
        {
            if (wd->ap.staTable[aid].psMode != 0)
            {
                FUNC8(ZM_LV_0, "aid=",aid);
                aid++;
                FUNC6(aid<=64);
                bitPosition = (1 << (aid & 0x7));
                bytePosition = (aid >> 3);
                uniBitMap[bytePosition] |= bitPosition;

                if (bytePosition>highestByte)
                {
                    highestByte = bytePosition;
                }
                id = (id+1) & (ZM_UNI_ARRAY_SIZE-1);
            }
            else
            {
                FUNC7(ZM_LV_0, "Send PS frame which STA no longer in PS mode");
                /* Send PS frame which STA no longer in PS mode */
                FUNC1(dev, id, dst);
                tmpBufArray[tmpBufArraySize++] = psBuf;
            }
        }
        else
        {
            FUNC7(ZM_LV_0, "Free garbage PS frame");
            /* Free garbage PS frame */
            FUNC1(dev, id, dst);
            FUNC5(dev, psBuf, 0);
        }
    }

    FUNC12(dev);
#endif

    FUNC4(dev, wd->ap.uapsdQ, uniBitMap, &highestByte);

    FUNC8(ZM_LV_3, "bm=",uniBitMap[0]);
    FUNC8(ZM_LV_3, "highestByte=",highestByte);
    FUNC8(ZM_LV_3, "timBcmcBit[]=",wd->ap.timBcmcBit[vap]);

    /* bitmap */
    FUNC14(dev, buf, offset++,
                         uniBitMap[0] | wd->ap.timBcmcBit[vap]);
    for (i=0; i<highestByte; i++)
    {
        FUNC14(dev, buf, offset++, uniBitMap[i+1]);
    }

    /* Element Length */
    FUNC14(dev, buf, lenOffset, highestByte+4);

    for (i=0; i<tmpBufArraySize; i++)
    {
        /* Put to VTXQ[ac] */
        FUNC3(dev, tmpBufArray[i]);
    }
    /* Push VTXQ[ac] */
    FUNC2(dev);

    return offset;
}