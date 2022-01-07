
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef size_t u16_t ;
struct TYPE_3__ {size_t uniHead; size_t uniTail; int ** uniArray; } ;
struct TYPE_4__ {TYPE_1__ ap; } ;


 int ZM_EXTERNAL_ALLOC_BUF ;
 int ZM_UNI_ARRAY_SIZE ;
 TYPE_2__* wd ;
 int zfApRemoveFromPsQueue (int *,size_t,size_t*) ;
 int zfTxSendEth (int *,int *,int ,int ,int ) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 size_t zmw_tx_buf_readh (int *,int *,int) ;

void zfApProcessPsPoll(zdev_t* dev, zbuf_t* buf)
{
    u16_t src[3];
    u16_t dst[3];
    zbuf_t* psBuf = ((void*)0);
    u16_t id;
    u8_t moreData = 0;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    src[0] = zmw_tx_buf_readh(dev, buf, 10);
    src[1] = zmw_tx_buf_readh(dev, buf, 12);
    src[2] = zmw_tx_buf_readh(dev, buf, 14);


    zmw_enter_critical_section(dev);
    id = wd->ap.uniHead;
    while (id != wd->ap.uniTail)
    {
        psBuf = wd->ap.uniArray[id];

        dst[0] = zmw_tx_buf_readh(dev, psBuf, 0);
        dst[1] = zmw_tx_buf_readh(dev, psBuf, 2);
        dst[2] = zmw_tx_buf_readh(dev, psBuf, 4);

        if ((src[0] == dst[0]) && (src[1] == dst[1]) && (src[2] == dst[2]))
        {
            moreData = zfApRemoveFromPsQueue(dev, id, src);
            break;
        }
        else
        {
            psBuf = ((void*)0);
        }
        id = (id + 1) & (ZM_UNI_ARRAY_SIZE - 1);
    }
    zmw_leave_critical_section(dev);


    if (psBuf != ((void*)0))
    {

        zfTxSendEth(dev, psBuf, 0, ZM_EXTERNAL_ALLOC_BUF, moreData);
    }

    return;
}
