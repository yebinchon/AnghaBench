
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef int u16_t ;
struct zsMicVar {int dummy; } ;
struct zsFrag {int* seq; int* bufType; int* flag; int ** buf; } ;
struct TYPE_7__ {int encryMode; int keyId; int cencKeyId; scalar_t__ wmeConnected; } ;
struct TYPE_6__ {int* bcHalKeyIdx; TYPE_1__* staTable; } ;
struct TYPE_8__ {scalar_t__ wlanMode; int fragThreshold; int * seq; TYPE_3__ sta; TYPE_2__ ap; } ;
struct TYPE_5__ {int encryMode; int keyIdx; } ;




 int ZM_INTERNAL_ALLOC_BUF ;
 int ZM_LV_2 ;
 scalar_t__ ZM_MODE_AP ;
 scalar_t__ ZM_MODE_IBSS ;
 scalar_t__ ZM_MODE_INFRASTRUCTURE ;
 int ZM_SUCCESS ;




 TYPE_4__* wd ;
 size_t* zcUpToAc ;
 int zf80211FrameSend (int *,int *,int*,int,int*,int*,int,int,int*,int*,int,int,int,size_t,int) ;
 int zfApFindSta (int *,int*) ;
 int zfApGetStaQosType (int *,int*,int*) ;
 int zfCopyToRxBuffer (int *,int *,int*,int,int) ;
 int zfTxBufferCopy (int *,int *,int *,int,int,int) ;
 int zfTxGenWlanHeader (int *,int *,int*,int,int,int,int,int,int*,int*,int,int*,int*,int,int *) ;
 int zfTxGenWlanSnap (int *,int *,int*,int*) ;
 int zfTxGenWlanTail (int *,int *,int*,int,int*) ;
 int zfTxGetIpTosAndFrag (int *,int *,int*,int*) ;
 int * zfwBufAllocate (int *,int) ;
 int zfwBufFree (int *,int *,int ) ;
 int zfwBufGetSize (int *,int *) ;
 int zfwBufSetSize (int *,int *,int) ;
 int zfwCopyBufContext (int *,int *,int *) ;
 int zm_msg1_tx (int ,char*,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 int zmw_tx_buf_readh (int *,int *,int) ;
 int zmw_tx_buf_writeh (int *,int *,int,int) ;

u16_t zfTxSendEth(zdev_t* dev, zbuf_t* buf, u16_t port, u16_t bufType, u16_t flag)
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
    u16_t i, j, id;
    u16_t offset;
    u16_t da[3];
    u16_t sa[3];
    u8_t up;
    u8_t qosType, keyIdx = 0;
    u16_t fragOff;
    u16_t newFlag;
    struct zsMicVar* pMicKey;
    u8_t tkipFrameOffset = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    newFlag = flag & 0xff00;
    flag = flag & 0xff;

    zm_msg1_tx(ZM_LV_2, "zfTxSendEth(), port=", port);


    zfTxGetIpTosAndFrag(dev, buf, &up, &fragOff);


    if (newFlag & 0x100)
    {
        up |= 0x10;
    }
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
            if ((da[0] & 0x1))
                keyIdx = 5;
            else
                keyIdx = 4;
            break;





        }
    }


    removeLen = zfTxGenWlanSnap(dev, buf, snap, &snapLen);
    if ( wd->sta.encryMode == 131 )
        tkipFrameOffset = 8;

    fragLen = wd->fragThreshold + tkipFrameOffset;
    frameLen = zfwBufGetSize(dev, buf);
    frameLen -= removeLen;


    micLen = 0;


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
    zmw_leave_critical_section(dev);


    frag.buf[0] = buf;
    frag.bufType[0] = bufType;
    frag.flag[0] = (u8_t)flag;
    fragNum = 1;

    headerLen = zfTxGenWlanHeader(dev, frag.buf[0], header, frag.seq[0],
                                  frag.flag[0], snapLen+micLen, removeLen, port, da, sa,
                                  up, &micLen, snap, snapLen, ((void*)0));





    if( headerLen != 0 )
    {
        zf80211FrameSend(dev, frag.buf[0], header, snapLen, da, sa, up,
                         headerLen, snap, mic, micLen, removeLen, frag.bufType[0],
                         zcUpToAc[up&0x7], keyIdx);
    }
    else
    {
        u16_t mpduLengthOffset;
        u16_t pseudSnapLen = 0;

        mpduLengthOffset = header[0] - frameLen;

        micLen = zfTxGenWlanTail(dev, buf, snap, snapLen, mic);

        fragLen = fragLen - mpduLengthOffset;





        if (frameLen >= fragLen)
        {

            i = 0;
            while( frameLen > 0 )
            {
                if ((frag.buf[i] = zfwBufAllocate(dev, fragLen+32)) != ((void*)0))
                {
                    frag.bufType[i] = ZM_INTERNAL_ALLOC_BUF;
                    frag.seq[i] = frag.seq[0] + i;
                    offset = removeLen + i*fragLen;


                    if ( i >= 1 )
                        offset = offset + pseudSnapLen*(i-1);

                    if (frameLen > fragLen + pseudSnapLen)
                    {
                        frag.flag[i] = flag | 0x4;

                        if (i == 0)
                        {

                            for (j=0; j<snapLen; j+=2)
                            {
                                zmw_tx_buf_writeh(dev, frag.buf[i], j, snap[(j>>1)]);
                            }
                            zfTxBufferCopy(dev, frag.buf[i], buf, snapLen, offset, fragLen);
                            zfwBufSetSize(dev, frag.buf[i], snapLen+fragLen);


                            pseudSnapLen = snapLen;

                            frameLen -= fragLen;
                        }

                        else
                        {



                            zfTxBufferCopy(dev, frag.buf[i], buf, 0, offset, fragLen+pseudSnapLen );
                            zfwBufSetSize(dev, frag.buf[i], fragLen+pseudSnapLen);

                            frameLen -= (fragLen+pseudSnapLen);
                        }

                    }
                    else
                    {

                        zfTxBufferCopy(dev, frag.buf[i], buf, 0, offset, frameLen);

                        if ( micLen )
                        {
                            zfCopyToRxBuffer(dev, frag.buf[i], (u8_t*) mic, frameLen, micLen);
                        }
                        zfwBufSetSize(dev, frag.buf[i], frameLen+micLen);
                        frameLen = 0;
                        frag.flag[i] = (u8_t)flag;
                    }
                    i++;
                }
                else
                {
                    break;
                }



                zfwCopyBufContext(dev, buf, frag.buf[i-1]);
            }
            fragNum = i;
            snapLen = micLen = removeLen = 0;

            zfwBufFree(dev, buf, 0);
        }

        for (i=0; i<fragNum; i++)
        {

            headerLen = zfTxGenWlanHeader(dev, frag.buf[i], header, frag.seq[i],
                                    frag.flag[i], snapLen+micLen, removeLen, port, da, sa, up, &micLen,
                                    snap, snapLen, ((void*)0));

            zf80211FrameSend(dev, frag.buf[i], header, snapLen, da, sa, up,
                             headerLen, snap, mic, micLen, removeLen, frag.bufType[i],
                             zcUpToAc[up&0x7], keyIdx);

        }
    }

    return ZM_SUCCESS;
}
