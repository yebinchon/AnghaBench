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
typedef  size_t u16_t ;
struct aggSta {scalar_t__* aggFlag; int /*<<< orphan*/ ** tid_tx; scalar_t__* count; } ;
struct aggQueue {size_t aggQSTA; size_t ac; size_t tid; scalar_t__ size; scalar_t__ deleteFlag; scalar_t__ clearFlag; scalar_t__ aggReady; scalar_t__ aggTail; scalar_t__ aggHead; scalar_t__ aggQEnabled; } ;
struct TYPE_2__ {struct aggSta* aggSta; struct aggQueue** aggQPool; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_LV_0 ; 
 size_t ZM_SUCCESS ; 
 TYPE_1__* wd ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

u16_t FUNC5(zdev_t* dev, u16_t qnum)
{
    u16_t ac, tid;
    struct aggQueue *tx_tid;
    struct aggSta   *agg_sta;

    FUNC3(dev);

    FUNC1();

    tx_tid = wd->aggQPool[qnum];
    agg_sta = &wd->aggSta[tx_tid->aggQSTA];
    ac = tx_tid->ac;
    tid = tx_tid->tid;

    FUNC2(dev);

    tx_tid->aggQEnabled = 0;
    tx_tid->aggHead = tx_tid->aggTail = 0;
    tx_tid->aggReady = 0;
    tx_tid->clearFlag = tx_tid->deleteFlag = 0;
    tx_tid->size = 0;
    agg_sta->count[ac] = 0;

    agg_sta->tid_tx[tid] = NULL;
    agg_sta->aggFlag[ac] = 0;

    FUNC4(dev);

    FUNC0(ZM_LV_0, "queue deleted! qnum=", qnum);

    return ZM_SUCCESS;
}