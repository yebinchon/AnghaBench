
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct TYPE_2__ {int * vtxqTail; int * vtxqHead; } ;


 TYPE_1__* wd ;
 size_t zm_agg_qlen (int *,int ,int ) ;
 size_t zm_agg_weight (size_t) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggTxPartial(zdev_t* dev, u16_t ac, u16_t readycount)
{
    u16_t qlen;
    u16_t partial;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);

    qlen = zm_agg_qlen(dev, wd->vtxqHead[ac], wd->vtxqTail[ac]);

    if ((qlen + readycount) > 0)
    {
        partial = (u16_t)( zm_agg_weight(ac) * ((u16_t)qlen/(qlen + readycount)) );

    }
    else
    {
        partial = 0;
    }

    zmw_leave_critical_section(dev);

    if (partial > qlen)
        partial = qlen;

    return partial;
}
