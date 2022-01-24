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
typedef  int /*<<< orphan*/  u8_t ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_5__ {TYPE_1__ psMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ ZM_PS_MSG_STATE_SLEEP ; 
 scalar_t__ ZM_PS_MSG_STATE_T2 ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

u8_t FUNC4(zdev_t *dev)
{
    u8_t isSleeping = FALSE;
    FUNC2(dev);
    FUNC0();

    FUNC1(dev);
    if ( wd->sta.psMgr.state == ZM_PS_MSG_STATE_SLEEP ||
         wd->sta.psMgr.state == ZM_PS_MSG_STATE_T2)
    {
        isSleeping = TRUE;
    }
    FUNC3(dev);
    return isSleeping;
}