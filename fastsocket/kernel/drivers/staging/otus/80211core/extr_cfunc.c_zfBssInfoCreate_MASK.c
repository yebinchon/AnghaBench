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
typedef  size_t u8_t ;
struct zsBssInfo {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * tail; int /*<<< orphan*/ * head; scalar_t__ bssCount; } ;
struct TYPE_5__ {size_t bssInfoFreeCount; int /*<<< orphan*/ * bssInfoArray; scalar_t__ bssInfoArrayTail; scalar_t__ bssInfoArrayHead; TYPE_1__ bssList; } ;
struct TYPE_6__ {TYPE_2__ sta; } ;

/* Variables and functions */
 size_t ZM_MAX_BSS ; 
 TYPE_3__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev)
{
    u8_t   i;

    FUNC3(dev);

    FUNC1();

    FUNC2(dev);

    wd->sta.bssList.bssCount = 0;
    wd->sta.bssList.head = NULL;
    wd->sta.bssList.tail = NULL;
    wd->sta.bssInfoArrayHead = 0;
    wd->sta.bssInfoArrayTail = 0;
    wd->sta.bssInfoFreeCount = ZM_MAX_BSS;

    for( i=0; i< ZM_MAX_BSS; i++ )
    {
        //wd->sta.bssInfoArray[i] = &(wd->sta.bssInfoPool[i]);
        wd->sta.bssInfoArray[i] = FUNC0(dev, sizeof(struct zsBssInfo));

    }

    FUNC4(dev);
}