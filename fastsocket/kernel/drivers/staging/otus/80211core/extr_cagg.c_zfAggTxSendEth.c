
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_9__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef scalar_t__ u8_t ;
typedef size_t u16_t ;
struct zsFrag {int* seq; size_t* bufType; int ** buf; scalar_t__* flag; } ;
struct aggControl {scalar_t__ ampduIndication; } ;
struct TYPE_15__ {size_t txDataByteCount; } ;
struct TYPE_14__ {int txTraffic; } ;
struct TYPE_13__ {int txMulticastOctets; int txMulticastFrm; int txBroadcastOctets; int txBroadcastFrm; int txUnicastOctets; int txUnicastFrm; } ;
struct TYPE_12__ {int encryMode; scalar_t__ keyId; scalar_t__ cencKeyId; scalar_t__ wmeConnected; } ;
struct TYPE_11__ {scalar_t__* bcHalKeyIdx; TYPE_1__* staTable; } ;
struct TYPE_17__ {scalar_t__ wlanMode; size_t fragThreshold; TYPE_6__ trafTally; TYPE_5__ ledStruct; TYPE_4__ commTally; int * seq; TYPE_3__ sta; TYPE_2__ ap; } ;
struct TYPE_16__ {int bar_ssn; } ;
struct TYPE_10__ {int encryMode; scalar_t__ keyIdx; } ;
typedef TYPE_7__* TID_TX ;



 scalar_t__ ZM_AGG_FIRST_MPDU ;

 size_t ZM_EXTERNAL_ALLOC_BUF ;
 size_t ZM_INTERNAL_ALLOC_BUF ;
 int ZM_LV_0 ;
 int ZM_LV_2 ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 size_t ZM_SUCCESS ;




 size_t addrTblSize ;
 TYPE_9__* wd ;
 size_t* zcUpToAc ;
 size_t zfApFindSta (int *,size_t*) ;
 int zfApGetStaQosType (int *,size_t*,scalar_t__*) ;
 size_t zfHpSend (int *,size_t*,size_t,size_t*,size_t,size_t*,size_t,int *,size_t,size_t,size_t,scalar_t__) ;
 size_t zfTxGenWlanHeader (int *,int *,size_t*,int,scalar_t__,size_t,size_t,size_t,size_t*,size_t*,scalar_t__,size_t*,size_t*,size_t,struct aggControl*) ;
 size_t zfTxGenWlanSnap (int *,int *,size_t*,size_t*) ;
 size_t zfTxGenWlanTail (int *,int *,size_t*,size_t,size_t*) ;
 int zfTxGetIpTosAndFrag (int *,int *,scalar_t__*,size_t*) ;
 int zfwBufFree (int *,int *,size_t) ;
 size_t zfwBufGetSize (int *,int *) ;
 int zm_assert (int ) ;
 int zm_debug_msg1 (char*,scalar_t__) ;
 int zm_msg1_agg (int ,char*,int) ;
 int zm_msg1_tx (int ,char*,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 size_t zmw_tx_buf_readh (int *,int *,int) ;

u16_t zfAggTxSendEth(zdev_t* dev, zbuf_t* buf, u16_t port, u16_t bufType, u8_t flag, struct aggControl *aggControl, TID_TX tid_tx)
{
    u16_t err;


    u16_t removeLen;
    u16_t header[(8+30+2+18)/2];
    u16_t headerLen;
    u16_t mic[8/2];
    u16_t micLen;
    u16_t snap[8/2];
    u16_t snapLen;
    u16_t fragLen;
    u16_t frameLen;
    u16_t fragNum;
    struct zsFrag frag;
    u16_t i, id;
    u16_t da[3];
    u16_t sa[3];
    u8_t up;
    u8_t qosType, keyIdx = 0;
    u16_t fragOff;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zm_msg1_tx(ZM_LV_2, "zfTxSendEth(), port=", port);


    zfTxGetIpTosAndFrag(dev, buf, &up, &fragOff);
    da[0] = zmw_tx_buf_readh(dev, buf, 0);
    da[1] = zmw_tx_buf_readh(dev, buf, 2);
    da[2] = zmw_tx_buf_readh(dev, buf, 4);

    sa[0] = zmw_tx_buf_readh(dev, buf, 6);
    sa[1] = zmw_tx_buf_readh(dev, buf, 8);
    sa[2] = zmw_tx_buf_readh(dev, buf, 10);


    if (wd->wlanMode == ZM_MODE_AP)
    {
        keyIdx = wd->ap.bcHalKeyIdx[port];
        id = zfApFindSta(dev, da);
        if (id != 0xffff)
        {
            switch (wd->ap.staTable[id].encryMode)
            {
            case 133:
            case 131:



                keyIdx = wd->ap.staTable[id].keyIdx;
                break;
            }
        }
    }
    else
    {
        switch (wd->sta.encryMode)
        {
        case 128:
        case 130:
        case 129:
            keyIdx = wd->sta.keyId;
            break;
        case 133:
        case 131:
            if ((da[0]& 0x1))
                keyIdx = 5;
            else
                keyIdx = 4;
            break;





        }
    }


    removeLen = zfTxGenWlanSnap(dev, buf, snap, &snapLen);


    fragLen = wd->fragThreshold;
    frameLen = zfwBufGetSize(dev, buf);
    frameLen -= removeLen;
    if ( frameLen > fragLen )
    {
        micLen = zfTxGenWlanTail(dev, buf, snap, snapLen, mic);
    }
    else
    {

        micLen = 0;
    }



    if (wd->wlanMode == ZM_MODE_AP)
    {
        zfApGetStaQosType(dev, da, &qosType);
        if (qosType == 0)
        {
            up = 0;
        }
    }
    else if (wd->wlanMode == ZM_MODE_INFRASTRUCTURE)
    {
        if (wd->sta.wmeConnected == 0)
        {
            up = 0;
        }
    }
    else
    {

        up = 0;
    }


    zmw_enter_critical_section(dev);
    frag.seq[0] = ((wd->seq[zcUpToAc[up&0x7]]++) << 4);
    if (aggControl && (ZM_AGG_FIRST_MPDU == aggControl->ampduIndication) ) {
        tid_tx->bar_ssn = frag.seq[0];

        zm_msg1_agg(ZM_LV_0, "start seq=", tid_tx->bar_ssn >> 4);
    }

    zmw_leave_critical_section(dev);


        frag.buf[0] = buf;
        frag.bufType[0] = bufType;
        frag.flag[0] = flag;
        fragNum = 1;

    for (i=0; i<fragNum; i++)
    {

        if (up !=0 ) zm_debug_msg1("up not 0, up=",up);
        headerLen = zfTxGenWlanHeader(dev, frag.buf[i], header, frag.seq[i],
                                      frag.flag[i], snapLen+micLen, removeLen,
                                      port, da, sa, up, &micLen, snap, snapLen,
                                      aggControl);
        fragLen = zfwBufGetSize(dev, frag.buf[i]);
        if ((da[0]&0x1) == 0)
        {
            wd->commTally.txUnicastFrm++;
            wd->commTally.txUnicastOctets += (fragLen+snapLen);
        }
        else if ((da[0]& 0x1))
        {
            wd->commTally.txBroadcastFrm++;
            wd->commTally.txBroadcastOctets += (fragLen+snapLen);
        }
        else
        {
            wd->commTally.txMulticastFrm++;
            wd->commTally.txMulticastOctets += (fragLen+snapLen);
        }
        wd->ledStruct.txTraffic++;
        if ((err = zfHpSend(dev, header, headerLen, snap, snapLen,
                             mic, micLen, frag.buf[i], removeLen,
                             frag.bufType[i], zcUpToAc[up&0x7], keyIdx)) != ZM_SUCCESS)
        {
            goto zlError;
        }


        continue;

zlError:
        if (frag.bufType[i] == ZM_EXTERNAL_ALLOC_BUF)
        {
            zfwBufFree(dev, frag.buf[i], err);
        }
        else if (frag.bufType[i] == ZM_INTERNAL_ALLOC_BUF)
        {
            zfwBufFree(dev, frag.buf[i], 0);
        }
        else
        {
            zm_assert(0);
        }
    }

    return ZM_SUCCESS;
}
