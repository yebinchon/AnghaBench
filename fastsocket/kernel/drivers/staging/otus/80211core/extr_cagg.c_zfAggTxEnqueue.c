
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef void* u32_t ;
typedef int u16_t ;
struct TYPE_13__ {int (* insert ) (int *,int ,int ,TYPE_2__*,int *) ;int (* exist ) (int *,int ,int ,TYPE_2__*,int *) ;} ;
struct TYPE_12__ {int (* zfcbSendCompleteIndication ) (int *,int *) ;} ;
struct TYPE_11__ {int size; size_t aggHead; size_t complete; int ac; int aggTail; void* lastArrival; TYPE_1__* aggvtxq; } ;
struct TYPE_10__ {scalar_t__ baw_retransmit; void* arrivalTime; int * buf; } ;
typedef TYPE_2__* TID_TX ;


 TYPE_9__ DESTQ ;
 int ZM_AGGQ_SIZE ;
 int ZM_AGGQ_SIZE_MASK ;
 int ZM_ERR_EXCEED_PRIORITY_THRESHOLD ;
 int ZM_LV_0 ;
 int ZM_SUCCESS ;
 int stub1 (int *,int ,int ,TYPE_2__*,int *) ;
 int stub2 (int *,int ,int ,TYPE_2__*,int *) ;
 int stub3 (int *,int *) ;
 int stub4 (int *,int ,int ,TYPE_2__*,int *) ;
 int stub5 (int *,int ,int ,TYPE_2__*,int *) ;
 TYPE_4__* wd ;
 void* zm_agg_GetTime () ;
 void* zm_agg_qlen (int *,size_t,int ) ;
 int zm_msg1_agg (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggTxEnqueue(zdev_t* dev, zbuf_t* buf, u16_t aid, TID_TX tid_tx)
{

    u32_t time;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);

    if (tid_tx->size < (ZM_AGGQ_SIZE - 2))
    {
        u8_t sendComplete = 0;

        tid_tx->aggvtxq[tid_tx->aggHead].buf = buf;
        time = zm_agg_GetTime();
        tid_tx->aggvtxq[tid_tx->aggHead].arrivalTime = time;
        tid_tx->aggvtxq[tid_tx->aggHead].baw_retransmit = 0;

        tid_tx->aggHead = ((tid_tx->aggHead + 1) & ZM_AGGQ_SIZE_MASK);
        tid_tx->lastArrival = time;
        tid_tx->size++;
        tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);
        if (buf && (tid_tx->size < (ZM_AGGQ_SIZE - 10))) {
            tid_tx->complete = tid_tx->aggHead;
            sendComplete = 1;
        }
        zmw_leave_critical_section(dev);

        if (!DESTQ.exist(dev, 0, tid_tx->ac, tid_tx, ((void*)0))) {
            DESTQ.insert(dev, 0, tid_tx->ac, tid_tx, ((void*)0));
        }

        zm_msg1_agg(ZM_LV_0, "tid_tx->size=", tid_tx->size);


        if (buf && sendComplete && wd->zfcbSendCompleteIndication) {

            wd->zfcbSendCompleteIndication(dev, buf);
        }




        return ZM_SUCCESS;
    }
    else
    {
        zm_msg1_agg(ZM_LV_0, "can't enqueue, tid_tx->size=", tid_tx->size);
    }

    zmw_leave_critical_section(dev);

    if (!DESTQ.exist(dev, 0, tid_tx->ac, tid_tx, ((void*)0))) {
            DESTQ.insert(dev, 0, tid_tx->ac, tid_tx, ((void*)0));
    }

    return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
}
