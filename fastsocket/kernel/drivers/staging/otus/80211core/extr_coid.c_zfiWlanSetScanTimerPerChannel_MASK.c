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
typedef  int u16_t ;
struct TYPE_3__ {int activescanTickPerChannel; } ;
struct TYPE_4__ {TYPE_1__ sta; } ;

/* Variables and functions */
 int ZM_MS_PER_TICK ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(zdev_t* dev, u16_t time)
{
    FUNC1(dev);

    FUNC0("scan time (ms) = ", time);

    wd->sta.activescanTickPerChannel = time / ZM_MS_PER_TICK;
}