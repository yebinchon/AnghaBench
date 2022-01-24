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
typedef  scalar_t__ u8_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_5__ {int powerSaveMode; TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_PS_MSG_STATE_T1 ; 
#define  ZM_STA_PS_FAST 131 
#define  ZM_STA_PS_LIGHT 130 
#define  ZM_STA_PS_MAX 129 
#define  ZM_STA_PS_NONE 128 
 TYPE_3__* wd ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(zdev_t *dev)
{
    u8_t isIdle;

    FUNC4(dev);
    FUNC2();

    isIdle = FUNC0(dev);

    if ( isIdle == 0 )
    {
        return;
    }

    FUNC3(dev);

    switch(wd->sta.powerSaveMode)
    {
        case ZM_STA_PS_NONE:
            break;

        case ZM_STA_PS_MAX:
        case ZM_STA_PS_FAST:
        case ZM_STA_PS_LIGHT:
            FUNC1("zfPowerSavingMgrSleepIfIdle: IDLE so slep now...\n");
            wd->sta.psMgr.state = ZM_PS_MSG_STATE_T1;
            break;
    }

    FUNC5(dev);
}