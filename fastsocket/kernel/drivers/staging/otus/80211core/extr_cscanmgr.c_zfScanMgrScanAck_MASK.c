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
struct TYPE_4__ {int scanStartDelay; } ;
struct TYPE_5__ {TYPE_1__ scanMgr; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev)
{
    FUNC2(dev);

    FUNC0();

    FUNC1(dev);

    wd->sta.scanMgr.scanStartDelay = 3;
    //wd->sta.scanMgr.scanStartDelay = 0;

    FUNC3(dev);
    return;
}