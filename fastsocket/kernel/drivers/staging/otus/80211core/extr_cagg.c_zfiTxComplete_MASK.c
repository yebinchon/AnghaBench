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
struct TYPE_3__ {scalar_t__ EnableHT; } ;
struct TYPE_4__ {scalar_t__ wlanMode; TYPE_1__ sta; } ;

/* Variables and functions */
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 scalar_t__ ZM_MODE_PSEUDO ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void    FUNC2(zdev_t* dev)
{

    FUNC1(dev);

    //zmw_declare_for_critical_section();

    if( (wd->wlanMode == ZM_MODE_AP) ||
        (wd->wlanMode == ZM_MODE_INFRASTRUCTURE && wd->sta.EnableHT) ||
        (wd->wlanMode == ZM_MODE_PSEUDO) ) {
        FUNC0(dev, 0);
    }

    return;
}