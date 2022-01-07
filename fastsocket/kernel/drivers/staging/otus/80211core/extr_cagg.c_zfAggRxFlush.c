
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct zsAdditionInfo {int dummy; } ;
struct agg_tid_rx {size_t baw_tail; size_t baw_head; int seq_start; TYPE_1__* frame; } ;
struct TYPE_4__ {int (* zfcbRecv80211 ) (int *,int *,struct zsAdditionInfo*) ;} ;
struct TYPE_3__ {int * buf; int addInfo; } ;


 int ZM_AGG_BAW_MASK ;
 int ZM_PERFORMANCE_RX_FLUSH (int *) ;
 int ZM_PERFORMANCE_RX_SEQ (int *,int *) ;
 int stub1 (int *,int *,struct zsAdditionInfo*) ;
 TYPE_2__* wd ;
 int zfiRecv80211 (int *,int *,struct zsAdditionInfo*) ;
 int zfwMemoryCopy (void*,void*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

u16_t zfAggRxFlush(zdev_t* dev, u16_t seq_no, struct agg_tid_rx *tid_rx)
{
    zbuf_t* pbuf;
    u16_t seq;
    struct zsAdditionInfo addInfo;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    ZM_PERFORMANCE_RX_FLUSH(dev);

    while (1)
    {
        zmw_enter_critical_section(dev);
        if (tid_rx->baw_tail == tid_rx->baw_head) {
            zmw_leave_critical_section(dev);
            break;
        }

        pbuf = tid_rx->frame[tid_rx->baw_tail].buf;
        zfwMemoryCopy((void*)&addInfo, (void*)&tid_rx->frame[tid_rx->baw_tail].addInfo, sizeof(struct zsAdditionInfo));
        tid_rx->frame[tid_rx->baw_tail].buf = 0;

        tid_rx->baw_tail = (tid_rx->baw_tail + 1) & ZM_AGG_BAW_MASK;
        tid_rx->seq_start = (tid_rx->seq_start + 1) & (4096 - 1);
     zmw_leave_critical_section(dev);

        if (pbuf)
        {

            ZM_PERFORMANCE_RX_SEQ(dev, pbuf);

            if (wd->zfcbRecv80211 != ((void*)0))
            {
                seq = zmw_rx_buf_readh(dev, pbuf, 22) >> 4;


                wd->zfcbRecv80211(dev, pbuf, &addInfo);
            }
            else
            {
                seq = zmw_rx_buf_readh(dev, pbuf, 22) >> 4;

                zfiRecv80211(dev, pbuf, &addInfo);
            }
        }
    }

    zmw_enter_critical_section(dev);
    tid_rx->baw_head = tid_rx->baw_tail = 0;
    zmw_leave_critical_section(dev);
    return 1;
}
