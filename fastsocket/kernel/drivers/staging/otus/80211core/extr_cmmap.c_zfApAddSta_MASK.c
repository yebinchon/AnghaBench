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
typedef  void* u8_t ;
typedef  int u16_t ;
struct TYPE_5__ {TYPE_1__* staTable; } ;
struct TYPE_6__ {int frequency; TYPE_2__ ap; int /*<<< orphan*/  tick; int /*<<< orphan*/  (* zfcbApConnectNotify ) (int /*<<< orphan*/ *,void**,int) ;} ;
struct TYPE_4__ {int state; int* addr; int valid; int /*<<< orphan*/  encryMode; void* vap; int /*<<< orphan*/  time; int /*<<< orphan*/  rcCell; void* qosInfo; void* staType; void* qosType; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 int /*<<< orphan*/  ZM_LV_2 ; 
 int /*<<< orphan*/  ZM_NO_WEP ; 
 int ZM_STATE_ASOC ; 
 int ZM_STATE_AUTH ; 
 int ZM_STATE_PREAUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void**,int) ; 
 TYPE_3__* wd ; 
 int FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

u16_t FUNC11(zdev_t* dev, u16_t* addr, u16_t state, u16_t apId, u8_t type,
                 u8_t qosType, u8_t qosInfo)
{
    u16_t index;
    u16_t i;

    FUNC9(dev);

    FUNC7();

    FUNC5(ZM_LV_0, "STA type=", type);

    FUNC8(dev);

    if ((index = FUNC1(dev, addr)) != 0xffff)
    {
        FUNC4(ZM_LV_2, "found");
        /* Update STA state */
        if ((state == ZM_STATE_AUTH) || (state == ZM_STATE_PREAUTH))
        {
            wd->ap.staTable[index].state = state;
            wd->ap.staTable[index].time = wd->tick;
            wd->ap.staTable[index].vap = (u8_t)apId;
        }
        else if (state == ZM_STATE_ASOC)
        {
            if (wd->ap.staTable[index].state == ZM_STATE_AUTH)
                    //&& (wd->ap.staTable[index].vap == apId))
            {
                wd->ap.staTable[index].state = state;
                wd->ap.staTable[index].time = wd->tick;
                wd->ap.staTable[index].qosType = qosType;
                wd->ap.staTable[index].vap = (u8_t)apId;
                wd->ap.staTable[index].staType = type;
                wd->ap.staTable[index].qosInfo = qosInfo;

                if (wd->frequency < 3000)
                {
                    /* Init 11b/g */
                    FUNC3(dev, &wd->ap.staTable[index].rcCell, type, 1, 1);
                }
                else
                {
                    /* Init 11a */
                    FUNC3(dev, &wd->ap.staTable[index].rcCell, type, 0, 1);
                }

                if (wd->zfcbApConnectNotify != NULL)
                {
                    wd->zfcbApConnectNotify(dev, (u8_t*)addr, apId);
                }
            }
            else
            {
                index = 0xffff;
            }
        }
    }
    else
    {
        FUNC4(ZM_LV_2, "Not found");
        if ((state == ZM_STATE_AUTH) || (state == ZM_STATE_PREAUTH))
        {
            /* Get a new STA and update state */
            index = FUNC2(dev);
            FUNC6(ZM_LV_1, "new STA index=", index);

            if (index != 0xffff)
            {
                for (i=0; i<3; i++)
                {
                    wd->ap.staTable[index].addr[i] = addr[i];
                }
                wd->ap.staTable[index].state = state;
                wd->ap.staTable[index].valid = 1;
                wd->ap.staTable[index].time = wd->tick;
                wd->ap.staTable[index].vap = (u8_t)apId;
                wd->ap.staTable[index].encryMode = ZM_NO_WEP;
            }
        }
    }

    FUNC10(dev);

    return index;
}