
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef size_t u16_t ;
struct agg_tid_rx {size_t aid; size_t ac; } ;
struct TYPE_2__ {struct agg_tid_rx** tid_rx; } ;


 size_t ZM_AGG_POOL_SIZE ;
 TYPE_1__* wd ;
 size_t zfApFindSta (int *,size_t*) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_rx_buf_readh (int *,int *,int) ;

struct agg_tid_rx *zfAggRxGetQueue(zdev_t* dev, zbuf_t* buf)
{
    u16_t src[3];
    u16_t aid, ac, i;
    u16_t offset = 0;
    struct agg_tid_rx *tid_rx = ((void*)0);

    zmw_get_wlan_dev(dev);



    src[0] = zmw_rx_buf_readh(dev, buf, offset+10);
    src[1] = zmw_rx_buf_readh(dev, buf, offset+12);
    src[2] = zmw_rx_buf_readh(dev, buf, offset+14);
    aid = zfApFindSta(dev, src);

    ac = (zmw_rx_buf_readh(dev, buf, 24) & 0xF);




    for (i=0; i<ZM_AGG_POOL_SIZE ; i++)
    {
        if((wd->tid_rx[i]->aid == aid) && (wd->tid_rx[i]->ac == ac))
        {
            tid_rx = wd->tid_rx[i];
            break;
        }
    }



    return tid_rx;
}
