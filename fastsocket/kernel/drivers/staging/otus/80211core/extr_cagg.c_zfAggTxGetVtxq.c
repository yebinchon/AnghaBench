
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
struct TYPE_5__ {size_t aggHead; size_t aggTail; scalar_t__ size; TYPE_1__* aggvtxq; } ;
struct TYPE_4__ {int * buf; } ;
typedef TYPE_2__* TID_TX ;


 int ZM_AGGQ_SIZE_MASK ;
 int ZM_LV_0 ;
 scalar_t__ zm_agg_qlen (int *,size_t,int) ;
 int zm_msg1_agg (int ,char*,scalar_t__) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_leave_critical_section (int *) ;

zbuf_t* zfAggTxGetVtxq(zdev_t* dev, TID_TX tid_tx)
{
    zbuf_t* buf = ((void*)0);

    zmw_declare_for_critical_section();

    if (tid_tx->aggHead != tid_tx->aggTail)
    {
        buf = tid_tx->aggvtxq[ tid_tx->aggTail ].buf;

        tid_tx->aggvtxq[tid_tx->aggTail].buf = ((void*)0);

        zmw_enter_critical_section(dev);
        tid_tx->aggTail = ((tid_tx->aggTail + 1) & ZM_AGGQ_SIZE_MASK);
        if(tid_tx->size > 0) tid_tx->size--;
        tid_tx->size = zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail);
        if (((void*)0) == buf) {


        }
        zmw_leave_critical_section(dev);
    }
    else
    {



        zm_msg1_agg(ZM_LV_0, "tid_tx->aggHead == tid_tx->aggTail, tid_tx->size=", tid_tx->size);

    }

    if (zm_agg_qlen(dev, tid_tx->aggHead, tid_tx->aggTail) != tid_tx->size)
        zm_msg1_agg(ZM_LV_0, "qlen!=tid_tx->size! tid_tx->size=", tid_tx->size);
    return buf;
}
