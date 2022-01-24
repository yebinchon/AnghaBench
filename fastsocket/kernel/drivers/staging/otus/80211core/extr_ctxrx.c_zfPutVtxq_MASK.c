#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zdev_t ;
typedef  int /*<<< orphan*/  zbuf_t ;
typedef  int u8_t ;
typedef  scalar_t__ u16_t ;
struct aggTally {int /*<<< orphan*/  got_packets_sum; } ;
struct TYPE_5__ {int /*<<< orphan*/ * txQosDropCount; } ;
struct TYPE_4__ {scalar_t__ EnableHT; } ;
struct TYPE_6__ {int (* zfcbClassifyTxPacket ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;scalar_t__ enableAggregation; scalar_t__ wlanMode; int* vtxqHead; int* vtxqTail; int* qosDropIpFrag; TYPE_2__ commTally; int /*<<< orphan*/ *** vtxq; TYPE_1__ sta; struct aggTally agg_tal; } ;

/* Variables and functions */
 scalar_t__ ZM_ERR_EXCEED_PRIORITY_THRESHOLD ; 
 scalar_t__ ZM_ERR_TX_BUFFER_UNAVAILABLE ; 
 int /*<<< orphan*/  ZM_LV_1 ; 
 scalar_t__ ZM_MODE_AP ; 
 scalar_t__ ZM_MODE_INFRASTRUCTURE ; 
 scalar_t__ ZM_MODE_PSEUDO ; 
 scalar_t__ ZM_SUCCESS ; 
 int ZM_VTXQ_SIZE ; 
 int ZM_VTXQ_SIZE_MASK ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* wd ; 
 int* zcUpToAc ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

u16_t FUNC9(zdev_t* dev, zbuf_t* buf)
{
    u8_t ac;
    u8_t up;
    u16_t fragOff;
#ifdef ZM_AGG_TALLY
    struct aggTally *agg_tal;
#endif
#ifdef ZM_ENABLE_AGGREGATION
    #ifndef ZM_BYPASS_AGGR_SCHEDULING
	u16_t ret;
    u16_t tid;
    #endif
#endif

    FUNC7(dev);

    FUNC5();

    FUNC2(dev, buf, &up, &fragOff);

    if ( wd->zfcbClassifyTxPacket != NULL )
    {
        ac = wd->zfcbClassifyTxPacket(dev, buf);
    }
    else
    {
        ac = zcUpToAc[up&0x7] & 0x3;
    }

    /*
     * add by honda
     * main A-MPDU aggregation function
     */
#ifdef ZM_AGG_TALLY
    agg_tal = &wd->agg_tal;
    agg_tal->got_packets_sum++;

#endif

#ifdef ZM_ENABLE_AGGREGATION
    #ifndef ZM_BYPASS_AGGR_SCHEDULING
    tid = up&0x7;
    if(wd->enableAggregation==0)
    {
        if( (wd->wlanMode == ZM_MODE_AP) ||
            (wd->wlanMode == ZM_MODE_INFRASTRUCTURE && wd->sta.EnableHT) ||
            (wd->wlanMode == ZM_MODE_PSEUDO) ) {
            // (infrastructure_mode && connect_to_11n_ap) || (ap_mode && is_11n_ap)
            //ret = zfAggPutVtxq(dev, buf);


            ret = zfAggTx(dev, buf, tid);
            if (ZM_SUCCESS == ret)
            {
                //zfwBufFree(dev, buf, ZM_SUCCESS);

                return ZM_SUCCESS;
            }
            if (ZM_ERR_EXCEED_PRIORITY_THRESHOLD == ret)
            {
                wd->commTally.txQosDropCount[ac]++;
                zfwBufFree(dev, buf, ZM_SUCCESS);

                zm_msg1_tx(ZM_LV_1, "Packet discarded, VTXQ full, ac=", ac);

                return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
            }
            if (ZM_ERR_TX_BUFFER_UNAVAILABLE == ret)
            {
                /*
                * do nothing
                * continue following procession, put into VTXQ
                * return ZM_SUCCESS;
                */
            }
        }
    }
    #endif
#endif
    /*
     * end of add by honda
     */

    /* First Ip frag */
    if ((fragOff & 0xff3f) == 0x0020)
    {
        /* Don't let ip frag in if VTXQ unable to hold */
        /* whole ip frag burst(assume 20 frag)         */
        FUNC6(dev);
        if (((wd->vtxqHead[ac] - wd->vtxqTail[ac])& ZM_VTXQ_SIZE_MASK)
                > (ZM_VTXQ_SIZE-20))
        {
            wd->qosDropIpFrag[ac] = 1;
        }
        else
        {
            wd->qosDropIpFrag[ac] = 0;
        }
        FUNC8(dev);

        if (wd->qosDropIpFrag[ac] == 1)
        {
            //zm_debug_msg2("vtQ full, drop buf = ", buf);
            wd->commTally.txQosDropCount[ac]++;
            FUNC3(dev, buf, ZM_SUCCESS);
            FUNC4(ZM_LV_1, "Packet discarded, first ip frag, ac=", ac);
            //VTXQ[] can not hold whold ip frag burst(assume 20 frags)
            return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
        }
    }
    else if ((fragOff & 0xff3f) == 0)
    {
        wd->qosDropIpFrag[ac] = 0;
    }

    if (((fragOff &= 0xff1f) != 0) && (wd->qosDropIpFrag[ac] == 1))
    {
        wd->commTally.txQosDropCount[ac]++;
        FUNC3(dev, buf, ZM_SUCCESS);
        FUNC4(ZM_LV_1, "Packet discarded, ip frag, ac=", ac);
        //Discard following ip frags
        return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
    }

    FUNC6(dev);
    if (((wd->vtxqHead[ac] + 1) & ZM_VTXQ_SIZE_MASK) != wd->vtxqTail[ac])
    {
        wd->vtxq[ac][wd->vtxqHead[ac]] = buf;
        wd->vtxqHead[ac] = ((wd->vtxqHead[ac] + 1) & ZM_VTXQ_SIZE_MASK);
        FUNC8(dev);
        return ZM_SUCCESS;
    }
    else
    {
        FUNC8(dev);

        wd->commTally.txQosDropCount[ac]++;
        FUNC3(dev, buf, ZM_SUCCESS);
        FUNC4(ZM_LV_1, "Packet discarded, VTXQ full, ac=", ac);
        return ZM_ERR_EXCEED_PRIORITY_THRESHOLD; //VTXQ[] Full
    }
}