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
typedef  scalar_t__ u8_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct zsTimerEntry {scalar_t__ timer; struct zsTimerEntry* pre; struct zsTimerEntry* next; int /*<<< orphan*/  event; } ;
struct TYPE_3__ {int freeCount; struct zsTimerEntry* tail; struct zsTimerEntry* head; } ;
struct TYPE_4__ {scalar_t__ tick; TYPE_1__ timerList; int /*<<< orphan*/  bTimerReady; } ;

/* Variables and functions */
 int ZM_MAX_TIMER_COUNT ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u16_t FUNC5(zdev_t* dev)
{
    struct zsTimerEntry *pEntry;
    struct zsTimerEntry *pTheLastEntry = NULL;
    u16_t  event[ZM_MAX_TIMER_COUNT];
    u8_t   i, j=0, count;

    FUNC3(dev);

    FUNC1();

    if ( !wd->bTimerReady )
    {
        return 0;
    }

    FUNC2(dev);

    pEntry = wd->timerList.head;
    count = ZM_MAX_TIMER_COUNT - wd->timerList.freeCount;

    for( i=0; i<count; i++ )
    {
        // prevent from the case of tick overflow
        if ( ( pEntry->timer > wd->tick )&&
             ((pEntry->timer - wd->tick) < 1000000000) )
        {
            break;
        }

        event[j++] = pEntry->event;
        pTheLastEntry = pEntry;
        pEntry = pEntry->next;
    }

    if ( j > 0 )
    {
        wd->timerList.tail->next = wd->timerList.head;
        wd->timerList.head->pre = wd->timerList.tail;
        wd->timerList.head = pEntry;
        wd->timerList.tail = pTheLastEntry;
        wd->timerList.freeCount += j;
        //zm_debug_msg1("free timer count = ", wd->timerList.freeCount);
    }

    FUNC4(dev);

    FUNC0(dev, event, j);

    return 0;
}