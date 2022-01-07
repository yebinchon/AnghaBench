
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
typedef size_t u16_t ;
struct agg_tid_rx {size_t aid; size_t ac; scalar_t__ sq_behind_count; scalar_t__ sq_exceed_count; scalar_t__ baw_tail; scalar_t__ baw_head; int seq_start; int addBaExchangeStatusCode; } ;
struct aggBaFrameParameter {size_t tid; int ba_start_seq; } ;
struct TYPE_2__ {struct agg_tid_rx** tid_rx; } ;


 int ZM_AGG_ADDBA_RESPONSE ;
 size_t ZM_AGG_POOL_SIZE ;
 scalar_t__ ZM_MAX_STA_SUPPORT ;
 TYPE_1__* wd ;
 int* zcUpToAc ;
 size_t zfApFindSta (int *,size_t*) ;
 int zfTxGetIpTosAndFrag (int *,int *,int*,size_t*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;
 size_t zmw_rx_buf_readh (int *,int *,size_t) ;

u16_t zfAggAddbaSetTidRx(zdev_t* dev, zbuf_t* buf, struct aggBaFrameParameter *bf)
{
    u16_t i, ac, aid, fragOff;
    u16_t src[3];
    u16_t offset = 0;
    u8_t up;
    struct agg_tid_rx *tid_rx = ((void*)0);

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    src[0] = zmw_rx_buf_readh(dev, buf, offset+10);
    src[1] = zmw_rx_buf_readh(dev, buf, offset+12);
    src[2] = zmw_rx_buf_readh(dev, buf, offset+14);
    aid = zfApFindSta(dev, src);

    zfTxGetIpTosAndFrag(dev, buf, &up, &fragOff);
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

    zmw_enter_critical_section(dev);

    tid_rx->aid = aid;
    tid_rx->ac = ac;
    tid_rx->addBaExchangeStatusCode = ZM_AGG_ADDBA_RESPONSE;
    tid_rx->seq_start = bf->ba_start_seq;
    tid_rx->baw_head = tid_rx->baw_tail = 0;
    tid_rx->sq_exceed_count = tid_rx->sq_behind_count = 0;
    zmw_leave_critical_section(dev);

    return 0;
}
