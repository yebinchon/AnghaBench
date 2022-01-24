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
struct TYPE_3__ {scalar_t__ flagKeyChanging; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(zdev_t* dev)
{
    FUNC4(dev);
    FUNC2();

#if 0
    wd->sta.flagKeyChanging = 0;
#else
    if(wd->sta.flagKeyChanging)
    {
        FUNC3(dev);
        wd->sta.flagKeyChanging--;
        FUNC5(dev);
    }
#endif
    FUNC1("  zfCoreSetKeyComplete--- ", wd->sta.flagKeyChanging);

    FUNC0(dev);
}