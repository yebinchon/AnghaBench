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
typedef  int u32_t ;
typedef  size_t u16_t ;
struct agg_tid_rx {scalar_t__ baw_head; scalar_t__ baw_tail; TYPE_1__* frame; } ;
struct TYPE_4__ {struct agg_tid_rx** tid_rx; } ;
struct TYPE_3__ {int arrivalTime; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 size_t ZM_AGG_BAW_MASK ; 
 int ZM_AGG_CLEAR_TIME ; 
 size_t ZM_AGG_POOL_SIZE ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 size_t ZM_SUCCESS ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct agg_tid_rx*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

u16_t FUNC6(zdev_t* dev, u32_t time)
{
    u16_t   i;
    struct agg_tid_rx *tid_rx;

    FUNC4(dev);

    FUNC2();

    for (i=0; i<ZM_AGG_POOL_SIZE; i++)
    {
        FUNC3(dev);
        tid_rx = wd->tid_rx[i];
        if (tid_rx->baw_head != tid_rx->baw_tail)
        {
            u16_t j = tid_rx->baw_tail;
            while ((j != tid_rx->baw_head) && !tid_rx->frame[j].buf) {
            	j = (j + 1) & ZM_AGG_BAW_MASK;
            }
            if ((j != tid_rx->baw_head) && (time - tid_rx->frame[j].arrivalTime) >
                    (ZM_AGG_CLEAR_TIME - 5))
            {
                FUNC5(dev);
                FUNC1(ZM_LV_1, "queue RxFlush by RxClear");
                FUNC0(dev, 0, tid_rx);
                FUNC3(dev);
            }
        }
        FUNC5(dev);
    }

    return ZM_SUCCESS;
}