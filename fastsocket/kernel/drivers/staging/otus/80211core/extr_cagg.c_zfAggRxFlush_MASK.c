#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u16_t ;
struct zsAdditionInfo {int dummy; } ;
struct agg_tid_rx {size_t baw_tail; size_t baw_head; int seq_start; TYPE_1__* frame; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* zfcbRecv80211 ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsAdditionInfo*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/ * buf; int /*<<< orphan*/  addInfo; } ;

/* Variables and functions */
 int ZM_AGG_BAW_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsAdditionInfo*) ; 
 TYPE_2__* wd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct zsAdditionInfo*) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

u16_t FUNC10(zdev_t* dev, u16_t seq_no, struct agg_tid_rx *tid_rx)
{
    zbuf_t* pbuf;
    u16_t   seq;
    struct zsAdditionInfo addInfo;
    FUNC7(dev);
    FUNC5();

    FUNC0(dev);

    while (1)
    {
        FUNC6(dev);
        if (tid_rx->baw_tail == tid_rx->baw_head) {
            FUNC8(dev);
            break;
        }

        pbuf = tid_rx->frame[tid_rx->baw_tail].buf;
        FUNC4((void*)&addInfo, (void*)&tid_rx->frame[tid_rx->baw_tail].addInfo, sizeof(struct zsAdditionInfo));
        tid_rx->frame[tid_rx->baw_tail].buf = 0;
        //if(pbuf && tid_rx->baw_size > 0) tid_rx->baw_size--;
        tid_rx->baw_tail = (tid_rx->baw_tail + 1) & ZM_AGG_BAW_MASK;
        tid_rx->seq_start = (tid_rx->seq_start + 1) & (4096 - 1);
	    FUNC8(dev);

        if (pbuf)
        {

            FUNC1(dev, pbuf);

            if (wd->zfcbRecv80211 != NULL)
            {
                seq = FUNC9(dev, pbuf, 22) >> 4;
                //DbgPrint("Recv indicate seq=%d\n", seq);
                //DbgPrint("2. seq=%d\n", seq);
                wd->zfcbRecv80211(dev, pbuf, &addInfo);
            }
            else
            {
                seq = FUNC9(dev, pbuf, 22) >> 4;
                //DbgPrint("Recv indicate seq=%d\n", seq);
                FUNC3(dev, pbuf, &addInfo);
            }
        }
    }

    FUNC6(dev);
    tid_rx->baw_head = tid_rx->baw_tail = 0;
    FUNC8(dev);
    return 1;
}