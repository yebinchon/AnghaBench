#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u32_t ;
struct zsQueue {size_t head; size_t tail; int sizeMask; TYPE_1__* cell; } ;
struct TYPE_2__ {int tick; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 int ZM_MS_PER_TICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(zdev_t* dev, struct zsQueue* q, u32_t tick, u32_t msAge)
{
    zbuf_t* buf;
    u32_t   buftick;
    FUNC2();

    while (1)
    {
        buf = NULL;
        FUNC3(dev);

        if (q->head != q->tail)
        {
            buftick = q->cell[q->head].tick;
            if (((tick - buftick)*ZM_MS_PER_TICK) > msAge)
            {
                buf = q->cell[q->head].buf;
                q->head = (q->head+1) & q->sizeMask;
            }
        }

        FUNC4(dev);

        if (buf != NULL)
        {
            FUNC1(ZM_LV_0, "Age frame in queue!");
            FUNC0(dev, buf, 0);
        }
        else
        {
            break;
        }
    }
    return;
}