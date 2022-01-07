
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u16_t ;
struct baw_enabler {int dummy; } ;
struct agg_tid_rx {size_t baw_head; size_t baw_tail; int aggQEnabled; int (* disable ) (int *,TYPE_3__*) ;int aid; scalar_t__ seq_start; TYPE_1__* frame; } ;
struct aggQueue {int dummy; } ;
struct TYPE_7__ {scalar_t__ enabled; } ;
struct TYPE_6__ {struct agg_tid_rx** tid_rx; struct agg_tid_rx** aggQPool; } ;
struct TYPE_5__ {int * buf; } ;
typedef struct agg_tid_rx* TID_TX ;


 struct agg_tid_rx* BAW ;
 int ZM_AGG_BAW_MASK ;
 size_t ZM_AGG_BAW_SIZE ;
 size_t ZM_AGG_POOL_SIZE ;
 int ZM_LV_0 ;
 int ZM_MAX_STA_SUPPORT ;
 size_t ZM_SUCCESS ;
 int stub1 (int *,TYPE_3__*) ;
 TYPE_3__* tid_baw ;
 TYPE_2__* wd ;
 int * zfAggTxGetVtxq (int *,struct agg_tid_rx*) ;
 int zfwBufFree (int *,int *,int ) ;
 int zfwMemFree (int *,struct agg_tid_rx*,int) ;
 int zm_msg1_agg (int ,char*,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggRxFreeBuf(zdev_t* dev, u16_t destroy)
{
    u16_t i;
    zbuf_t* buf;
    struct agg_tid_rx *tid_rx;

    TID_TX tid_tx;


    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    for (i=0; i<ZM_AGG_POOL_SIZE; i++)
    {
        u16_t j;

        tid_rx = wd->tid_rx[i];

        for(j=0; j <= ZM_AGG_BAW_SIZE; j++)
        {
            zmw_enter_critical_section(dev);
            buf = tid_rx->frame[j].buf;
            tid_rx->frame[j].buf = 0;
            zmw_leave_critical_section(dev);

            if (buf)
            {
                zfwBufFree(dev, buf, 0);
            }
        }
        zmw_enter_critical_section(dev);
        tid_rx->seq_start = 0;
        tid_rx->baw_head = tid_rx->baw_tail = 0;
        tid_rx->aid = ZM_MAX_STA_SUPPORT;
        zmw_leave_critical_section(dev);
        if (1 == wd->aggQPool[i]->aggQEnabled) {
            tid_tx = wd->aggQPool[i];
            buf = zfAggTxGetVtxq(dev, tid_tx);
            while (buf) {
                zfwBufFree(dev, buf, 0);
                buf = zfAggTxGetVtxq(dev, tid_tx);
            }
        }

        if(destroy) {
            zfwMemFree(dev, wd->aggQPool[i], sizeof(struct aggQueue));
            zfwMemFree(dev, wd->tid_rx[i], sizeof(struct agg_tid_rx));
        }
    }





    return ZM_SUCCESS;
}
