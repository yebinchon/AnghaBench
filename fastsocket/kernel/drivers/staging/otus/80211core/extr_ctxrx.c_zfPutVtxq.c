
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef scalar_t__ u16_t ;
struct aggTally {int got_packets_sum; } ;
struct TYPE_5__ {int * txQosDropCount; } ;
struct TYPE_4__ {scalar_t__ EnableHT; } ;
struct TYPE_6__ {int (* zfcbClassifyTxPacket ) (int *,int *) ;scalar_t__ enableAggregation; scalar_t__ wlanMode; int* vtxqHead; int* vtxqTail; int* qosDropIpFrag; TYPE_2__ commTally; int *** vtxq; TYPE_1__ sta; struct aggTally agg_tal; } ;


 scalar_t__ ZM_ERR_EXCEED_PRIORITY_THRESHOLD ;
 scalar_t__ ZM_ERR_TX_BUFFER_UNAVAILABLE ;
 int ZM_LV_1 ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 scalar_t__ ZM_MODE_PSEUDO ;
 scalar_t__ ZM_SUCCESS ;
 int ZM_VTXQ_SIZE ;
 int ZM_VTXQ_SIZE_MASK ;
 int stub1 (int *,int *) ;
 TYPE_3__* wd ;
 int* zcUpToAc ;
 scalar_t__ zfAggTx (int *,int *,scalar_t__) ;
 int zfTxGetIpTosAndFrag (int *,int *,int*,scalar_t__*) ;
 int zfwBufFree (int *,int *,scalar_t__) ;
 int zm_msg1_tx (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfPutVtxq(zdev_t* dev, zbuf_t* buf)
{
    u8_t ac;
    u8_t up;
    u16_t fragOff;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zfTxGetIpTosAndFrag(dev, buf, &up, &fragOff);

    if ( wd->zfcbClassifyTxPacket != ((void*)0) )
    {
        ac = wd->zfcbClassifyTxPacket(dev, buf);
    }
    else
    {
        ac = zcUpToAc[up&0x7] & 0x3;
    }
    if ((fragOff & 0xff3f) == 0x0020)
    {


        zmw_enter_critical_section(dev);
        if (((wd->vtxqHead[ac] - wd->vtxqTail[ac])& ZM_VTXQ_SIZE_MASK)
                > (ZM_VTXQ_SIZE-20))
        {
            wd->qosDropIpFrag[ac] = 1;
        }
        else
        {
            wd->qosDropIpFrag[ac] = 0;
        }
        zmw_leave_critical_section(dev);

        if (wd->qosDropIpFrag[ac] == 1)
        {

            wd->commTally.txQosDropCount[ac]++;
            zfwBufFree(dev, buf, ZM_SUCCESS);
            zm_msg1_tx(ZM_LV_1, "Packet discarded, first ip frag, ac=", ac);

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
        zfwBufFree(dev, buf, ZM_SUCCESS);
        zm_msg1_tx(ZM_LV_1, "Packet discarded, ip frag, ac=", ac);

        return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
    }

    zmw_enter_critical_section(dev);
    if (((wd->vtxqHead[ac] + 1) & ZM_VTXQ_SIZE_MASK) != wd->vtxqTail[ac])
    {
        wd->vtxq[ac][wd->vtxqHead[ac]] = buf;
        wd->vtxqHead[ac] = ((wd->vtxqHead[ac] + 1) & ZM_VTXQ_SIZE_MASK);
        zmw_leave_critical_section(dev);
        return ZM_SUCCESS;
    }
    else
    {
        zmw_leave_critical_section(dev);

        wd->commTally.txQosDropCount[ac]++;
        zfwBufFree(dev, buf, ZM_SUCCESS);
        zm_msg1_tx(ZM_LV_1, "Packet discarded, VTXQ full, ac=", ac);
        return ZM_ERR_EXCEED_PRIORITY_THRESHOLD;
    }
}
