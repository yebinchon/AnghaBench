#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
struct TYPE_5__ {size_t aggHead; size_t aggTail; scalar_t__ size; TYPE_1__* aggvtxq; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buf; } ;
typedef  TYPE_2__* TID_TX ;

/* Variables and functions */
 int ZM_AGGQ_SIZE_MASK ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

zbuf_t* FUNC5(zdev_t* dev, TID_TX tid_tx)
{
    zbuf_t* buf = NULL;

    FUNC2();

    if (tid_tx->aggHead != tid_tx->aggTail)
    {
        buf = tid_tx->aggvtxq[ tid_tx->aggTail ].buf;

        tid_tx->aggvtxq[tid_tx->aggTail].buf = NULL;

        FUNC3(dev);
        tid_tx->aggTail = ((tid_tx->aggTail + 1) & ZM_AGGQ_SIZE_MASK);
        if(tid_tx->size > 0) tid_tx->size--;
        tid_tx->size = FUNC0(dev, tid_tx->aggHead, tid_tx->aggTail);
        if (NULL == buf) {
            //tid_tx->aggTail = tid_tx->aggHead = tid_tx->size = 0;
            //zm_msg1_agg(ZM_LV_0, "GetVtxq buf == NULL, tid_tx->size=", tid_tx->size);
        }
        FUNC4(dev);
    }
    else
    {
        /*
         * queue is empty
         */
        FUNC1(ZM_LV_0, "tid_tx->aggHead == tid_tx->aggTail, tid_tx->size=", tid_tx->size);

    }

    if (FUNC0(dev, tid_tx->aggHead, tid_tx->aggTail) != tid_tx->size)
        FUNC1(ZM_LV_0, "qlen!=tid_tx->size! tid_tx->size=", tid_tx->size);
    return buf;
}