
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
struct TYPE_2__ {size_t vmmqHead; size_t vmmqTail; int ** vmmq; } ;


 int ZM_VMMQ_SIZE_MASK ;
 TYPE_1__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

zbuf_t* zfGetVmmq(zdev_t* dev)
{
    zbuf_t* buf;
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if (wd->vmmqHead != wd->vmmqTail)
    {
        buf = wd->vmmq[wd->vmmqTail];
        wd->vmmqTail = ((wd->vmmqTail + 1) & ZM_VMMQ_SIZE_MASK);
        zmw_leave_critical_section(dev);
        return buf;
    }
    else
    {
        zmw_leave_critical_section(dev);
        return 0;
    }
}
