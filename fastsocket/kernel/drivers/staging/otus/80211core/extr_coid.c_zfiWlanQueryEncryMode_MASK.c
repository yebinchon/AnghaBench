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
struct TYPE_5__ {int /*<<< orphan*/  encryMode; } ;
struct TYPE_4__ {int /*<<< orphan*/ * encryMode; } ;
struct TYPE_6__ {scalar_t__ wlanMode; TYPE_2__ sta; TYPE_1__ ap; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_AP ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

u8_t FUNC1(zdev_t* dev)
{
    FUNC0(dev);

    if (wd->wlanMode == ZM_MODE_AP)
        return wd->ap.encryMode[0];
    else
        return wd->sta.encryMode;
}