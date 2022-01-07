
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u8_t ;
struct TYPE_2__ {size_t* vtxqHead; size_t* vtxqTail; int *** vtxq; } ;


 int ZM_VTXQ_SIZE_MASK ;
 TYPE_1__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

zbuf_t* zfGetVtxq(zdev_t* dev, u8_t ac)
{
    zbuf_t* buf;

    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    ac &= 0x3;
    zmw_enter_critical_section(dev);
    if (wd->vtxqHead[ac] != wd->vtxqTail[ac])
    {
        buf = wd->vtxq[ac][wd->vtxqTail[ac]];
        wd->vtxqTail[ac] = ((wd->vtxqTail[ac] + 1) & ZM_VTXQ_SIZE_MASK);
        zmw_leave_critical_section(dev);
        return buf;
    }
    else
    {
        zmw_leave_critical_section(dev);
        return 0;
    }
}
