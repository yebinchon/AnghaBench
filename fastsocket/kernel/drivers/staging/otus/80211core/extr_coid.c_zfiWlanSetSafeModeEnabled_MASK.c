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
typedef  scalar_t__ u8_t ;
struct TYPE_3__ {scalar_t__ bSafeMode; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(zdev_t* dev, u8_t safeMode)
{
    FUNC2(dev);

    wd->sta.bSafeMode = safeMode;

    if ( safeMode )
    	FUNC1(dev, 1);
    else
        FUNC0(dev);
}