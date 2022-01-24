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
typedef  int u8_t ;
typedef  int u16_t ;
struct TYPE_4__ {int isSleepAllowed; int sleepAllowedtick; scalar_t__ tempWakeUp; int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int powerSaveMode; int aid; int qosInfo; int /*<<< orphan*/  uapsdQ; TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 int ZM_BIT_0 ; 
 int /*<<< orphan*/  ZM_EXTERNAL_ALLOC_BUF ; 
 int /*<<< orphan*/  ZM_PS_MSG_STATE_S1 ; 
#define  ZM_STA_PS_FAST 130 
#define  ZM_STA_PS_LIGHT 129 
#define  ZM_STA_PS_MAX 128 
 int ZM_STA_PS_NONE ; 
 int /*<<< orphan*/  ZM_WLAN_EID_TIM ; 
 TYPE_3__* wd ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void FUNC12(zdev_t* dev, zbuf_t* buf)
{
    u8_t   length, bitmap;
    u16_t  offset, n1, n2, q, r;
    zbuf_t* psBuf;

    FUNC9(dev);
    FUNC7();

    if ( wd->sta.powerSaveMode == ZM_STA_PS_NONE  )
    //if ( wd->sta.psMgr.state != ZM_PS_MSG_STATE_SLEEP )
    {
        return;
    }

    wd->sta.psMgr.isSleepAllowed = 1;

    if ( (offset=FUNC0(dev, buf, ZM_WLAN_EID_TIM)) != 0xffff )
    {
        length = FUNC11(dev, buf, offset+1);

        if ( length > 3 )
        {
            n1 = FUNC11(dev, buf, offset+4) & (~ZM_BIT_0);
            n2 = length + n1 - 4;
            q = wd->sta.aid >> 3;
            r = wd->sta.aid & 7;

            if ((q >= n1) && (q <= n2))
            {
                bitmap = FUNC11(dev, buf, offset+5+q-n1);

                if ( (bitmap >> r) &  ZM_BIT_0 )
                {
                    //if ( wd->sta.powerSaveMode == ZM_STA_PS_FAST )
                    if ( 0 )
                    {
                        wd->sta.psMgr.state = ZM_PS_MSG_STATE_S1;
                        //zfSendPSPoll(dev);
                        FUNC3(dev, 0);
                    }
                    else
                    {
                        if ((wd->sta.qosInfo&0xf) != 0xf)
                        {
                            /* send ps-poll */
                            //printk("zfSendPSPoll #1\n");

                            wd->sta.psMgr.isSleepAllowed = 0;

                            switch (wd->sta.powerSaveMode)
                            {
                            case ZM_STA_PS_MAX:
                            case ZM_STA_PS_FAST:
                                //zm_debug_msg0("wake up and send PS-Poll\n");
                                FUNC4(dev);
                                break;
                            case ZM_STA_PS_LIGHT:
                                FUNC6("wake up and send null data\n");

                                FUNC8(dev);
                                wd->sta.psMgr.sleepAllowedtick = 400;
                                FUNC10(dev);

                                FUNC3(dev, 0);
                                break;
                            }

                            wd->sta.psMgr.tempWakeUp = 0;
                        }
                    }
                }
            }
        }
    }

    while ((psBuf = FUNC2(dev, wd->sta.uapsdQ)) != NULL)
    {
        FUNC5(dev, psBuf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
    }

    //printk("zfPowerSavingMgrProcessBeacon #1\n");
    FUNC1(dev);
}