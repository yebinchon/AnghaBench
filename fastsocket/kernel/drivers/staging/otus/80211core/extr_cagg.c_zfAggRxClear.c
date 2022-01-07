
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u32_t ;
typedef size_t u16_t ;
struct agg_tid_rx {scalar_t__ baw_head; scalar_t__ baw_tail; TYPE_1__* frame; } ;
struct TYPE_4__ {struct agg_tid_rx** tid_rx; } ;
struct TYPE_3__ {int arrivalTime; int buf; } ;


 size_t ZM_AGG_BAW_MASK ;
 int ZM_AGG_CLEAR_TIME ;
 size_t ZM_AGG_POOL_SIZE ;
 int ZM_LV_1 ;
 size_t ZM_SUCCESS ;
 TYPE_2__* wd ;
 int zfAggRxFlush (int *,int ,struct agg_tid_rx*) ;
 int zm_msg0_agg (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggRxClear(zdev_t* dev, u32_t time)
{
    u16_t i;
    struct agg_tid_rx *tid_rx;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    for (i=0; i<ZM_AGG_POOL_SIZE; i++)
    {
        zmw_enter_critical_section(dev);
        tid_rx = wd->tid_rx[i];
        if (tid_rx->baw_head != tid_rx->baw_tail)
        {
            u16_t j = tid_rx->baw_tail;
            while ((j != tid_rx->baw_head) && !tid_rx->frame[j].buf) {
             j = (j + 1) & ZM_AGG_BAW_MASK;
            }
            if ((j != tid_rx->baw_head) && (time - tid_rx->frame[j].arrivalTime) >
                    (ZM_AGG_CLEAR_TIME - 5))
            {
                zmw_leave_critical_section(dev);
                zm_msg0_agg(ZM_LV_1, "queue RxFlush by RxClear");
                zfAggRxFlush(dev, 0, tid_rx);
                zmw_enter_critical_section(dev);
            }
        }
        zmw_leave_critical_section(dev);
    }

    return ZM_SUCCESS;
}
