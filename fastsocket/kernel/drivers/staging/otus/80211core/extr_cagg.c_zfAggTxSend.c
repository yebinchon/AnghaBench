
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u32_t ;
typedef int u16_t ;
struct aggControl {int aggEnabled; scalar_t__ addbaIndication; int ampduIndication; } ;
struct TYPE_12__ {int sent_packets_sum; } ;
struct TYPE_11__ {int aggState; int (* zfcbSendCompleteIndication ) (int *,scalar_t__) ;TYPE_8__ agg_tal; } ;
struct TYPE_10__ {int size; int complete; int aggTail; int aggHead; TYPE_1__* aggvtxq; scalar_t__ aggFrameSize; } ;
struct TYPE_9__ {scalar_t__ buf; } ;
typedef TYPE_2__* TID_TX ;


 int ZM_AGG_FIRST_MPDU ;
 int ZM_AGG_LAST_MPDU ;
 int ZM_AGG_MIDDLE_MPDU ;
 int ZM_EXTERNAL_ALLOC_BUF ;
 int ZM_LV_0 ;
 TYPE_8__* agg_tal ;
 int aggr_count ;
 int stub1 (int *,scalar_t__) ;
 TYPE_7__* wd ;
 int * zfAggTxGetVtxq (int *,TYPE_2__*) ;
 int zfAggTxSendEth (int *,int *,int ,int ,int ,struct aggControl*,TYPE_2__*) ;
 int zfTxSendEth (int *,int *,int ,int ,int ) ;
 scalar_t__ zfwBufGetSize (int *,int *) ;
 scalar_t__ zm_agg_inQ (TYPE_2__*,int) ;
 int zm_agg_min (int,int) ;
 int zm_agg_plus (int) ;
 void* zm_agg_qlen (int *,int ,int ) ;
 int zm_debug_msg0 (char*) ;
 int zm_msg1_agg (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggTxSend(zdev_t* dev, u32_t freeTxd, TID_TX tid_tx)
{


    u16_t j;

    zbuf_t* buf;
    struct aggControl aggControl;
    u16_t aggLen;





    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();



    zmw_enter_critical_section(dev);
    tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);
    aggLen = zm_agg_min(16, zm_agg_min(tid_tx->size, (u16_t)(freeTxd - 2)));
    zmw_leave_critical_section(dev);




    if (aggLen <=0 )
        return 0;


    if (aggLen == 1) {
        buf = zfAggTxGetVtxq(dev, tid_tx);
        if (buf)
            zfTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0);
        if (tid_tx->size == 0) {

        }

        return 1;
    }



    zmw_enter_critical_section(dev);
    if (wd->aggState == 1) {
        zmw_leave_critical_section(dev);
        return 0;
    }
    wd->aggState = 1;
    zmw_leave_critical_section(dev);


    zm_msg1_agg(ZM_LV_0, "aggLen=", aggLen);
    tid_tx->aggFrameSize = 0;
    for (j=0; j < aggLen; j++) {
        buf = zfAggTxGetVtxq(dev, tid_tx);

        zmw_enter_critical_section(dev);
        tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);
        zmw_leave_critical_section(dev);

        if ( buf ) {

            u16_t completeIndex;

            if (0 == j) {
                aggControl.ampduIndication = ZM_AGG_FIRST_MPDU;

            }
            else if ((j == (aggLen - 1)) || tid_tx->size == 0)
            {
                aggControl.ampduIndication = ZM_AGG_LAST_MPDU;


            }
            else
            {
                aggControl.ampduIndication = ZM_AGG_MIDDLE_MPDU;


            }
            tid_tx->aggFrameSize += zfwBufGetSize(dev, buf);
            aggControl.addbaIndication = 0;
            aggControl.aggEnabled = 1;







            zfAggTxSendEth(dev, buf, 0, ZM_EXTERNAL_ALLOC_BUF, 0, &aggControl, tid_tx);

            zmw_enter_critical_section(dev);
            completeIndex = tid_tx->complete;
            if(zm_agg_inQ(tid_tx, tid_tx->complete))
                zm_agg_plus(tid_tx->complete);
            zmw_leave_critical_section(dev);

            if(zm_agg_inQ(tid_tx, completeIndex) && wd->zfcbSendCompleteIndication
                    && tid_tx->aggvtxq[completeIndex].buf) {
                wd->zfcbSendCompleteIndication(dev, tid_tx->aggvtxq[completeIndex].buf);
                zm_debug_msg0("in queue complete worked!");
            }

        }
        else {



            zm_msg1_agg(ZM_LV_0, "aggLen not reached, but no more frame, j=", j);

            break;
        }
    }
    zmw_enter_critical_section(dev);
    wd->aggState = 0;
    zmw_leave_critical_section(dev);


    tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);


    if (tid_tx->size == 0) {

    }




    if(j>0) {
        aggr_count++;
        zm_msg1_agg(ZM_LV_0, "0xC2:sent 1 aggr, aggr_count=", aggr_count);
        zm_msg1_agg(ZM_LV_0, "0xC2:sent 1 aggr, aggr_size=", j);
    }
    return j;
}
