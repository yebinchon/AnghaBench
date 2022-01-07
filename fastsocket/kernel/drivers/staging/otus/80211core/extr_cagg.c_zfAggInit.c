
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct baw_enabler {int dummy; } ;
struct agg_tid_rx {int dummy; } ;
struct aggQueue {int dummy; } ;
struct TYPE_14__ {int (* init ) (int *) ;} ;
struct TYPE_13__ {int (* init ) (int *) ;} ;
struct TYPE_12__ {int aggInitiated; int reorder; TYPE_4__** tid_rx; TYPE_2__** aggQPool; scalar_t__ aggState; TYPE_1__* aggSta; scalar_t__ addbaCount; scalar_t__ addbaComplete; } ;
struct TYPE_11__ {size_t aid; scalar_t__ addBaExchangeStatusCode; TYPE_3__* frame; scalar_t__ sq_behind_count; scalar_t__ sq_exceed_count; scalar_t__ baw_tail; scalar_t__ baw_head; scalar_t__ seq_start; } ;
struct TYPE_10__ {scalar_t__ buf; } ;
struct TYPE_9__ {scalar_t__ deleteFlag; scalar_t__ clearFlag; scalar_t__ aggReady; scalar_t__ aggQEnabled; scalar_t__ aggTail; scalar_t__ aggHead; } ;
struct TYPE_8__ {int ** tid_tx; scalar_t__* count; scalar_t__* aggFlag; } ;


 TYPE_7__* BAW ;
 TYPE_6__ DESTQ ;
 size_t ZM_AC ;
 size_t ZM_AGG_BAW_SIZE ;
 size_t ZM_AGG_POOL_SIZE ;
 size_t ZM_MAX_STA_SUPPORT ;
 scalar_t__ aggr_count ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 scalar_t__ success_mpdu ;
 scalar_t__ total_mpdu ;
 TYPE_5__* wd ;
 int zfAggDestInit (int *) ;
 int zfAggTallyReset (int *) ;
 int zfBawInit (int *) ;
 void* zfwMemAllocate (int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfAggInit(zdev_t* dev)
{
    u16_t i,j;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();




    zmw_enter_critical_section(dev);
    wd->aggInitiated = 0;
    wd->addbaComplete = 0;
    wd->addbaCount = 0;
    wd->reorder = 1;
    for (i=0; i<ZM_MAX_STA_SUPPORT; i++)
    {
        for (j=0; j<ZM_AC; j++)
        {

            wd->aggSta[i].aggFlag[j] = wd->aggSta[i].count[j] = 0;
            wd->aggSta[i].tid_tx[j] = ((void*)0);
            wd->aggSta[i].tid_tx[j+1] = ((void*)0);

        }
    }




    wd->aggState = 0;
    for (i=0; i<ZM_AGG_POOL_SIZE; i++)
    {



        wd->aggQPool[i] = zfwMemAllocate(dev, sizeof(struct aggQueue));
        if(!wd->aggQPool[i])
        {
            zmw_leave_critical_section(dev);
            return;
        }
        wd->aggQPool[i]->aggHead = wd->aggQPool[i]->aggTail =
        wd->aggQPool[i]->aggQEnabled = wd->aggQPool[i]->aggReady =
        wd->aggQPool[i]->clearFlag = wd->aggQPool[i]->deleteFlag = 0;





        wd->tid_rx[i] = zfwMemAllocate(dev, sizeof(struct agg_tid_rx));
        if (!wd->tid_rx[i])
        {
            zmw_leave_critical_section(dev);
            return;
        }
        wd->tid_rx[i]->aid = ZM_MAX_STA_SUPPORT;
        wd->tid_rx[i]->seq_start = wd->tid_rx[i]->baw_head = wd->tid_rx[i]->baw_tail = 0;

        wd->tid_rx[i]->sq_exceed_count = wd->tid_rx[i]->sq_behind_count = 0;
        for (j=0; j<=ZM_AGG_BAW_SIZE; j++)
            wd->tid_rx[i]->frame[j].buf = 0;
        wd->tid_rx[i]->addBaExchangeStatusCode = 0;

    }
    zmw_leave_critical_section(dev);
    zfAggTallyReset(dev);
    DESTQ.init = zfAggDestInit;
    DESTQ.init(dev);
    wd->aggInitiated = 1;
    aggr_count = 0;
    success_mpdu = 0;
    total_mpdu = 0;
}
