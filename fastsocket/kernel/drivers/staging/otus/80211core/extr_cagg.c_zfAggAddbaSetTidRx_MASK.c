#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  size_t u16_t ;
struct agg_tid_rx {size_t aid; size_t ac; scalar_t__ sq_behind_count; scalar_t__ sq_exceed_count; scalar_t__ baw_tail; scalar_t__ baw_head; int /*<<< orphan*/  seq_start; int /*<<< orphan*/  addBaExchangeStatusCode; } ;
struct aggBaFrameParameter {size_t tid; int /*<<< orphan*/  ba_start_seq; } ;
struct TYPE_2__ {struct agg_tid_rx** tid_rx; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZM_AGG_ADDBA_RESPONSE ; 
 size_t ZM_AGG_POOL_SIZE ; 
 scalar_t__ ZM_MAX_STA_SUPPORT ; 
 TYPE_1__* wd ; 
 int* zcUpToAc ; 
 size_t FUNC0 (int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

u16_t   FUNC7(zdev_t* dev, zbuf_t* buf, struct aggBaFrameParameter *bf)
{
    u16_t i, ac, aid, fragOff;
    u16_t src[3];
    u16_t offset = 0;
    u8_t  up;
    struct agg_tid_rx *tid_rx = NULL;

    FUNC4(dev);

    FUNC2();

    src[0] = FUNC6(dev, buf, offset+10);
    src[1] = FUNC6(dev, buf, offset+12);
    src[2] = FUNC6(dev, buf, offset+14);
    aid = FUNC0(dev, src);

    FUNC1(dev, buf, &up, &fragOff);
    ac = zcUpToAc[up&0x7] & 0x3;

    ac = bf->tid;

    for (i=0; i<ZM_AGG_POOL_SIZE ; i++)
    {
        if((wd->tid_rx[i]->aid == aid) && (wd->tid_rx[i]->ac == ac))
        {
            tid_rx = wd->tid_rx[i];
            break;
        }
    }

    if (!tid_rx)
    {
        for (i=0; i<ZM_AGG_POOL_SIZE; i++)
        {
            if (wd->tid_rx[i]->aid == ZM_MAX_STA_SUPPORT)
            {
                tid_rx = wd->tid_rx[i];
                break;
            }
        }
        if (!tid_rx)
            return 0;
    }

    FUNC3(dev);

    tid_rx->aid = aid;
    tid_rx->ac = ac;
    tid_rx->addBaExchangeStatusCode = ZM_AGG_ADDBA_RESPONSE;
    tid_rx->seq_start = bf->ba_start_seq;
    tid_rx->baw_head = tid_rx->baw_tail = 0;
    tid_rx->sq_exceed_count = tid_rx->sq_behind_count = 0;
    FUNC5(dev);

    return 0;
}