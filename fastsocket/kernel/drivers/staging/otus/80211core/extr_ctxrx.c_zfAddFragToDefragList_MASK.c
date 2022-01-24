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
typedef  scalar_t__ u8_t ;
typedef  size_t u16_t ;
struct zsAdditionInfo {int dummy; } ;
struct TYPE_5__ {TYPE_1__* defragEntry; } ;
struct TYPE_6__ {TYPE_2__ defragTable; } ;
struct TYPE_4__ {scalar_t__ fragCount; scalar_t__* addr; size_t seqNum; int /*<<< orphan*/ ** fragment; } ;

/* Variables and functions */
 size_t ZM_MAX_DEFRAG_ENTRIES ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*,size_t*,struct zsAdditionInfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

zbuf_t* FUNC10(zdev_t* dev, zbuf_t* buf, u8_t* addr,
        u16_t seqNum, u8_t fragNum, u8_t moreFrag,
        struct zsAdditionInfo* addInfo)
{
    u16_t i, j, k;
    zbuf_t* returnBuf = NULL;
    u16_t defragDone = 0;
    u16_t lenErr = 0;
    u16_t startAddr, fragHead, frameLen, ivLen, icvLen;
    FUNC7(dev);
    FUNC5();

    FUNC6(dev);

    /* Find frag in the defrag list */
    for(i=0; i<ZM_MAX_DEFRAG_ENTRIES; i++)
    {
        if ( wd->defragTable.defragEntry[i].fragCount != 0 )
        {
            /* Compare address */
            for (j=0; j<6; j++)
            {
                if (addr[j] != wd->defragTable.defragEntry[i].addr[j])
                {
                    break;
                }
            }
            if (j == 6)
            {
                /* Compare sequence and fragment number */
                if (seqNum == wd->defragTable.defragEntry[i].seqNum)
                {
                    if ((fragNum == wd->defragTable.defragEntry[i].fragCount)
                                && (fragNum < 8))
                    {
                        /* Add frag frame to defrag list */
                        wd->defragTable.defragEntry[i].fragment[fragNum] = buf;
                        wd->defragTable.defragEntry[i].fragCount++;
                        defragDone = 1;

                        if (moreFrag == 0)
                        {
                            /* merge all fragment if more data bit is cleared */
                            returnBuf = wd->defragTable.defragEntry[i].fragment[0];
                            startAddr = FUNC3(dev, returnBuf);
                            /* skip WLAN header 24(Data) or 26(QoS Data) */
                            fragHead = 24 + ((FUNC9(dev, returnBuf, 0) & 0x80) >> 6);
                            FUNC0(dev, returnBuf, 0, &ivLen, &icvLen, addInfo);
                            fragHead += ivLen; /* skip IV */
                            for(k=1; k<wd->defragTable.defragEntry[i].fragCount; k++)
                            {
                                frameLen = FUNC3(dev,
                                                         wd->defragTable.defragEntry[i].fragment[k]);
                                if ((startAddr+frameLen-fragHead) < 1560)
                                {
                                    FUNC1(dev, returnBuf, wd->defragTable.defragEntry[i].fragment[k],
                                               startAddr, fragHead, frameLen-fragHead);
                                    startAddr += (frameLen-fragHead);
                                }
                                else
                                {
                                    lenErr = 1;
                                }
                                FUNC2(dev, wd->defragTable.defragEntry[i].fragment[k], 0);
                            }

                            wd->defragTable.defragEntry[i].fragCount = 0;
                            FUNC4(dev, returnBuf, startAddr);
                        }
                        break;
                    }
                }
            }
        }
    }

    FUNC8(dev);

    if (lenErr == 1)
    {
        FUNC2(dev, returnBuf, 0);
        return NULL;
    }
    if (defragDone == 0)
    {
        FUNC2(dev, buf, 0);
        return NULL;
    }

    return returnBuf;
}