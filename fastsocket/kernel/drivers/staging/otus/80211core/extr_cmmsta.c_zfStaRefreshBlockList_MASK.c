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
typedef  size_t u16_t ;
struct TYPE_4__ {TYPE_2__* blockingApList; } ;
struct TYPE_6__ {TYPE_1__ sta; } ;
struct TYPE_5__ {scalar_t__ weight; } ;

/* Variables and functions */
 size_t ZM_MAX_BLOCKING_AP_LIST_SIZE ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(zdev_t* dev, u16_t flushFlag)
{
    u16_t i;
    FUNC2(dev);
    FUNC0();

    FUNC1(dev);
    for (i=0; i<ZM_MAX_BLOCKING_AP_LIST_SIZE; i++)
    {
        if (wd->sta.blockingApList[i].weight != 0)
        {
            if (flushFlag != 0)
            {
                wd->sta.blockingApList[i].weight = 0;
            }
            else
            {
                wd->sta.blockingApList[i].weight--;
            }
        }
    }
    FUNC3(dev);
    return;
}