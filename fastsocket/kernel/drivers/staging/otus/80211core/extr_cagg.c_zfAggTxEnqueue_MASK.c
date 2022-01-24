#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  void* u32_t ;
typedef  int /*<<< orphan*/  u16_t ;
struct TYPE_13__ {int /*<<< orphan*/  (* insert ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* exist ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  (* zfcbSendCompleteIndication ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {int size; size_t aggHead; size_t complete; int /*<<< orphan*/  ac; int /*<<< orphan*/  aggTail; void* lastArrival; TYPE_1__* aggvtxq; } ;
struct TYPE_10__ {scalar_t__ baw_retransmit; void* arrivalTime; int /*<<< orphan*/ * buf; } ;
typedef  TYPE_2__* TID_TX ;

/* Variables and functions */
 TYPE_9__ DESTQ ; 
 int ZM_AGGQ_SIZE ; 
 int ZM_AGGQ_SIZE_MASK ; 
 int /*<<< orphan*/  ZM_ERR_EXCEED_PRIORITY_THRESHOLD ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* wd ; 
 void* FUNC5 () ; 
 void* FUNC6 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

u16_t FUNC12(zdev_t* dev, zbuf_t* buf, u16_t aid, TID_TX tid_tx)
{
    //u16_t   qlen, frameLen;
    u32_t   time;

    FUNC10(dev);

    FUNC8();

    FUNC9(dev);

    tid_tx->size = FUNC6(dev, tid_tx->aggHead, tid_tx->aggTail);

    if (tid_tx->size < (ZM_AGGQ_SIZE - 2))
    {
        /* Queue not full */


        /*
         * buffer copy
         * in zfwBufFree will return a ndismsendcomplete
         * to resolve the synchronize problem in aggregate
         */

        u8_t    sendComplete = 0;

        tid_tx->aggvtxq[tid_tx->aggHead].buf = buf;
        time = FUNC5();
        tid_tx->aggvtxq[tid_tx->aggHead].arrivalTime = time;
        tid_tx->aggvtxq[tid_tx->aggHead].baw_retransmit = 0;

        tid_tx->aggHead = ((tid_tx->aggHead + 1) & ZM_AGGQ_SIZE_MASK);
        tid_tx->lastArrival = time;
        tid_tx->size++;
        tid_tx->size = FUNC6(dev, tid_tx->aggHead, tid_tx->aggTail);
        if (buf && (tid_tx->size < (ZM_AGGQ_SIZE - 10))) {
            tid_tx->complete = tid_tx->aggHead;
            sendComplete = 1;
        }
        FUNC11(dev);

        if (!DESTQ.exist(dev, 0, tid_tx->ac, tid_tx, NULL)) {
            DESTQ.insert(dev, 0, tid_tx->ac, tid_tx, NULL);
        }

        FUNC7(ZM_LV_0, "tid_tx->size=", tid_tx->size);
        //zm_debug_msg1("tid_tx->size=", tid_tx->size);

        if (buf && sendComplete && wd->zfcbSendCompleteIndication) {
            //zmw_leave_critical_section(dev);
            wd->zfcbSendCompleteIndication(dev, buf);
        }

        /*if (tid_tx->size >= 16 && zfHpGetFreeTxdCount(dev) > 20)
            zfAggTxSend(dev, zfHpGetFreeTxdCount(dev), tid_tx);
        */
        return ZM_SUCCESS;
    }
    else
    {
        FUNC7(ZM_LV_0, "can't enqueue, tid_tx->size=", tid_tx->size);
        /*
         * Queue Full
         */

        /*
         * zm_msg1_agg(ZM_LV_0, "Queue full, qnum = ", qnum);
         * wd->commTally.txQosDropCount[ac]++;
         * zfwBufFree(dev, buf, ZM_SUCCESS);
         * zm_msg1_agg(ZM_LV_1, "Packet discarded, VTXQ full, ac=", ac);
         *
         * return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
         */
    }

    FUNC11(dev);

    if (!DESTQ.exist(dev, 0, tid_tx->ac, tid_tx, NULL)) {
            DESTQ.insert(dev, 0, tid_tx->ac, tid_tx, NULL);
    }

    return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
}