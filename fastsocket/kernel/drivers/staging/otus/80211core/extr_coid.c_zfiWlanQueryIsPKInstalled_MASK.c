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
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_5__ {TYPE_1__* oppositeInfo; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;
struct TYPE_4__ {scalar_t__ pkInstalled; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u8_t FUNC5(zdev_t *dev, u8_t *staMacAddr)
{
    u8_t isInstalled = 0;

#if 1
//#ifdef ZM_ENABLE_IBSS_WPA2PSK
    u8_t   res, peerIdx;

    FUNC3(dev);

    FUNC1();

    FUNC2(dev);
    res = FUNC0(dev, (u16_t *)staMacAddr, &peerIdx);
    if( res == 0 )
    {
        isInstalled = wd->sta.oppositeInfo[peerIdx].pkInstalled;
    }
    FUNC4(dev);
//#endif
#endif

    return isInstalled;
}