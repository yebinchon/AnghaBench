
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
typedef size_t u8_t ;
typedef size_t u16_t ;
struct zsQueue {size_t head; size_t tail; size_t sizeMask; TYPE_1__* cell; } ;
struct TYPE_7__ {TYPE_2__* staTable; } ;
struct TYPE_8__ {TYPE_3__ ap; } ;
struct TYPE_6__ {scalar_t__ psMode; int qosInfo; } ;
struct TYPE_5__ {int * buf; } ;


 TYPE_4__* wd ;
 size_t zfApFindSta (int *,size_t*) ;
 int zfQueueRemovewithIndex (int *,struct zsQueue*,size_t,size_t*) ;
 int zfwBufFree (int *,int *,int ) ;
 size_t zmw_buf_readb (int *,int *,size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfQueueGenerateUapsdTim(zdev_t* dev, struct zsQueue* q,
        u8_t* uniBitMap, u16_t* highestByte)
{
    zbuf_t* psBuf;
    u8_t dst[6];
    u16_t id, aid, index, i;
    u16_t bitPosition;
    u16_t bytePosition;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    index = q->head;

    while (index != q->tail)
    {
        psBuf = q->cell[index].buf;
        for (i=0; i<6; i++)
        {
            dst[i] = zmw_buf_readb(dev, psBuf, i);
        }

        if (((id = zfApFindSta(dev, (u16_t*)dst)) != 0xffff)
                && (wd->ap.staTable[id].psMode != 0))
        {

            if ((wd->ap.staTable[id].qosInfo & 0xf) == 0xf)
            {
                aid = id + 1;
                bitPosition = (1 << (aid & 0x7));
                bytePosition = (aid >> 3);
                uniBitMap[bytePosition] |= bitPosition;

                if (bytePosition>*highestByte)
                {
                    *highestByte = bytePosition;
                }
            }
            index = (index+1) & q->sizeMask;
        }
        else
        {

            zfQueueRemovewithIndex(dev, q, index, dst);
            zfwBufFree(dev, psBuf, 0);
        }
    }
    zmw_leave_critical_section(dev);

    return;
}
