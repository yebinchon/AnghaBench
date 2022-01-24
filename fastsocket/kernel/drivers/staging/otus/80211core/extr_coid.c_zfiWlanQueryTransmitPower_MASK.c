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
typedef  int /*<<< orphan*/  u32_t ;
struct TYPE_3__ {int /*<<< orphan*/  connPowerInHalfDbm; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

u32_t FUNC3(zdev_t* dev)
{
    u32_t ret = 0;

    FUNC2(dev);

    if (FUNC1(dev)) {
        ret = wd->sta.connPowerInHalfDbm;
    } else {
        ret = FUNC0(dev);
    }

    return ret;
}