
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u8_t ;
typedef size_t u16_t ;
struct TYPE_5__ {int* timBcmcBit; scalar_t__* bcmcTail; scalar_t__* bcmcHead; size_t uniHead; size_t uniTail; int uapsdQ; TYPE_1__* staTable; int ** uniArray; } ;
struct TYPE_6__ {scalar_t__ CurrentDtimCount; scalar_t__ dtim; TYPE_2__ ap; } ;
struct TYPE_4__ {scalar_t__ psMode; } ;


 int ZM_LV_0 ;
 int ZM_LV_3 ;
 int ZM_UNI_ARRAY_SIZE ;
 size_t ZM_WLAN_EID_TIM ;
 TYPE_3__* wd ;
 size_t zfApFindSta (int *,size_t*) ;
 int zfApRemoveFromPsQueue (int *,size_t,size_t*) ;
 int zfPushVtxq (int *) ;
 int zfPutVtxq (int *,int *) ;
 int zfQueueGenerateUapsdTim (int *,int ,size_t*,size_t*) ;
 int zfwBufFree (int *,int *,int ) ;
 int zm_assert (int) ;
 int zm_msg0_mm (int ,char*) ;
 int zm_msg1_mm (int ,char*,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 size_t zmw_tx_buf_readh (int *,int *,int) ;
 int zmw_tx_buf_writeb (int *,int *,size_t,size_t) ;

u16_t zfApAddIeTim(zdev_t* dev, zbuf_t* buf, u16_t offset, u16_t vap)
{
    u8_t uniBitMap[9];
    u16_t highestByte;
    u16_t i;
    u16_t lenOffset;
    u16_t id;
    u16_t dst[3];
    u16_t aid;
    u16_t bitPosition;
    u16_t bytePosition;
    zbuf_t* psBuf;
    zbuf_t* tmpBufArray[ZM_UNI_ARRAY_SIZE];
    u16_t tmpBufArraySize = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();


    zmw_tx_buf_writeb(dev, buf, offset++, ZM_WLAN_EID_TIM);


    lenOffset = offset++;




    wd->CurrentDtimCount++;
    if (wd->CurrentDtimCount >= wd->dtim)
    {
        wd->CurrentDtimCount = 0;
    }
    zmw_tx_buf_writeb(dev, buf, offset++, wd->CurrentDtimCount);

    zmw_tx_buf_writeb(dev, buf, offset++, wd->dtim);

    zmw_tx_buf_writeb(dev, buf, offset++, 0);


    if (wd->CurrentDtimCount == 0)
    {
        zmw_enter_critical_section(dev);
        wd->ap.timBcmcBit[vap] = (wd->ap.bcmcTail[vap]!=wd->ap.bcmcHead[vap])?1:0;
        zmw_leave_critical_section(dev);
    }
    else
    {
        wd->ap.timBcmcBit[vap] = 0;
    }



    for (i=0; i<9; i++)
    {
        uniBitMap[i] = 0;
    }
    highestByte = 0;


    zmw_enter_critical_section(dev);

    id = wd->ap.uniHead;
    while (id != wd->ap.uniTail)
    {
        psBuf = wd->ap.uniArray[id];




        dst[0] = zmw_tx_buf_readh(dev, psBuf, 0);
        dst[1] = zmw_tx_buf_readh(dev, psBuf, 2);
        dst[2] = zmw_tx_buf_readh(dev, psBuf, 4);
        if ((aid = zfApFindSta(dev, dst)) != 0xffff)
        {
            if (wd->ap.staTable[aid].psMode != 0)
            {
                zm_msg1_mm(ZM_LV_0, "aid=",aid);
                aid++;
                zm_assert(aid<=64);
                bitPosition = (1 << (aid & 0x7));
                bytePosition = (aid >> 3);
                uniBitMap[bytePosition] |= bitPosition;

                if (bytePosition>highestByte)
                {
                    highestByte = bytePosition;
                }
                id = (id+1) & (ZM_UNI_ARRAY_SIZE-1);
            }
            else
            {
                zm_msg0_mm(ZM_LV_0, "Send PS frame which STA no longer in PS mode");

                zfApRemoveFromPsQueue(dev, id, dst);
                tmpBufArray[tmpBufArraySize++] = psBuf;
            }
        }
        else
        {
            zm_msg0_mm(ZM_LV_0, "Free garbage PS frame");

            zfApRemoveFromPsQueue(dev, id, dst);
            zfwBufFree(dev, psBuf, 0);
        }
    }

    zmw_leave_critical_section(dev);


    zfQueueGenerateUapsdTim(dev, wd->ap.uapsdQ, uniBitMap, &highestByte);

    zm_msg1_mm(ZM_LV_3, "bm=",uniBitMap[0]);
    zm_msg1_mm(ZM_LV_3, "highestByte=",highestByte);
    zm_msg1_mm(ZM_LV_3, "timBcmcBit[]=",wd->ap.timBcmcBit[vap]);


    zmw_tx_buf_writeb(dev, buf, offset++,
                         uniBitMap[0] | wd->ap.timBcmcBit[vap]);
    for (i=0; i<highestByte; i++)
    {
        zmw_tx_buf_writeb(dev, buf, offset++, uniBitMap[i+1]);
    }


    zmw_tx_buf_writeb(dev, buf, lenOffset, highestByte+4);

    for (i=0; i<tmpBufArraySize; i++)
    {

        zfPutVtxq(dev, tmpBufArray[i]);
    }

    zfPushVtxq(dev);

    return offset;
}
