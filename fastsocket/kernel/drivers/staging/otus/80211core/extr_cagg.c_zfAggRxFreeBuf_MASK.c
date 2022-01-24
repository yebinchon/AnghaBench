#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  size_t u16_t ;
struct baw_enabler {int dummy; } ;
struct agg_tid_rx {size_t baw_head; size_t baw_tail; int aggQEnabled; int /*<<< orphan*/  (* disable ) (int /*<<< orphan*/ *,TYPE_3__*) ;int /*<<< orphan*/  aid; scalar_t__ seq_start; TYPE_1__* frame; } ;
struct aggQueue {int dummy; } ;
struct TYPE_7__ {scalar_t__ enabled; } ;
struct TYPE_6__ {struct agg_tid_rx** tid_rx; struct agg_tid_rx** aggQPool; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;
typedef  struct agg_tid_rx* TID_TX ;

/* Variables and functions */
 struct agg_tid_rx* BAW ; 
 int ZM_AGG_BAW_MASK ; 
 size_t ZM_AGG_BAW_SIZE ; 
 size_t ZM_AGG_POOL_SIZE ; 
 int /*<<< orphan*/  ZM_LV_0 ; 
 int /*<<< orphan*/  ZM_MAX_STA_SUPPORT ; 
 size_t ZM_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 TYPE_3__* tid_baw ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,struct agg_tid_rx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct agg_tid_rx*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

u16_t   FUNC9(zdev_t* dev, u16_t destroy)
{
    u16_t   i;
    zbuf_t* buf;
    struct agg_tid_rx *tid_rx;

    TID_TX  tid_tx;
    //struct bufInfo *buf_info;

    FUNC7(dev);
    FUNC5();

    for (i=0; i<ZM_AGG_POOL_SIZE; i++)
    {
        u16_t j;

        tid_rx = wd->tid_rx[i];

        for(j=0; j <= ZM_AGG_BAW_SIZE; j++)
        {
            FUNC6(dev);
            buf = tid_rx->frame[j].buf;
            tid_rx->frame[j].buf = 0;
            FUNC8(dev);

            if (buf)
            {
                FUNC2(dev, buf, 0);
            }
        }

        #if 0
        if ( tid_rx->baw_head != tid_rx->baw_tail )
        {
            while (tid_rx->baw_head != tid_rx->baw_tail)
            {
                buf = tid_rx->frame[tid_rx->baw_tail].buf;
                tid_rx->frame[tid_rx->baw_tail].buf = 0;
                if (buf)
                {
                    zfwBufFree(dev, buf, 0);

                    zmw_enter_critical_section(dev);
                    tid_rx->frame[tid_rx->baw_tail].buf = 0;
                    zmw_leave_critical_section(dev);
                }
                zmw_enter_critical_section(dev);
                //if (tid_rx->baw_size > 0)tid_rx->baw_size--;
                tid_rx->baw_tail = (tid_rx->baw_tail + 1) & ZM_AGG_BAW_MASK;
                tid_rx->seq_start++;
                zmw_leave_critical_section(dev);
            }
        }
        #endif

        FUNC6(dev);
        tid_rx->seq_start = 0;
        tid_rx->baw_head = tid_rx->baw_tail = 0;
        tid_rx->aid = ZM_MAX_STA_SUPPORT;
        FUNC8(dev);

        #ifdef ZM_ENABLE_AGGREGATION
        #ifndef ZM_ENABLE_FW_BA_RETRANSMISSION //disable BAW
        if (tid_baw->enabled) {
            zm_msg1_agg(ZM_LV_0, "Device down, clear BAW queue:", i);
            BAW->disable(dev, tid_baw);
        }
        #endif
        #endif
        if (1 == wd->aggQPool[i]->aggQEnabled) {
            tid_tx = wd->aggQPool[i];
            buf = FUNC1(dev, tid_tx);
            while (buf) {
                FUNC2(dev, buf, 0);
                buf = FUNC1(dev, tid_tx);
            }
        }

        if(destroy) {
            FUNC3(dev, wd->aggQPool[i], sizeof(struct aggQueue));
            FUNC3(dev, wd->tid_rx[i], sizeof(struct agg_tid_rx));
        }
    }
    #ifdef ZM_ENABLE_AGGREGATION
    #ifndef ZM_ENABLE_FW_BA_RETRANSMISSION //disable BAW
    if(destroy) zfwMemFree(dev, BAW, sizeof(struct baw_enabler));
    #endif
    #endif
    return ZM_SUCCESS;
}