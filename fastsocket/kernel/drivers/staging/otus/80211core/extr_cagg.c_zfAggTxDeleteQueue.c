
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct aggSta {scalar_t__* aggFlag; int ** tid_tx; scalar_t__* count; } ;
struct aggQueue {size_t aggQSTA; size_t ac; size_t tid; scalar_t__ size; scalar_t__ deleteFlag; scalar_t__ clearFlag; scalar_t__ aggReady; scalar_t__ aggTail; scalar_t__ aggHead; scalar_t__ aggQEnabled; } ;
struct TYPE_2__ {struct aggSta* aggSta; struct aggQueue** aggQPool; } ;


 int ZM_LV_0 ;
 size_t ZM_SUCCESS ;
 TYPE_1__* wd ;
 int zm_msg1_agg (int ,char*,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggTxDeleteQueue(zdev_t* dev, u16_t qnum)
{
    u16_t ac, tid;
    struct aggQueue *tx_tid;
    struct aggSta *agg_sta;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    tx_tid = wd->aggQPool[qnum];
    agg_sta = &wd->aggSta[tx_tid->aggQSTA];
    ac = tx_tid->ac;
    tid = tx_tid->tid;

    zmw_enter_critical_section(dev);

    tx_tid->aggQEnabled = 0;
    tx_tid->aggHead = tx_tid->aggTail = 0;
    tx_tid->aggReady = 0;
    tx_tid->clearFlag = tx_tid->deleteFlag = 0;
    tx_tid->size = 0;
    agg_sta->count[ac] = 0;

    agg_sta->tid_tx[tid] = ((void*)0);
    agg_sta->aggFlag[ac] = 0;

    zmw_leave_critical_section(dev);

    zm_msg1_agg(ZM_LV_0, "queue deleted! qnum=", qnum);

    return ZM_SUCCESS;
}
