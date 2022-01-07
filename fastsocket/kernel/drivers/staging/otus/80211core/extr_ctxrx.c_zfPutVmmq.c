
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int zbuf_t ;
typedef int u16_t ;
struct TYPE_2__ {int vmmqHead; int vmmqTail; int ** vmmq; } ;


 int ZM_ERR_VMMQ_FULL ;
 int ZM_LV_0 ;
 int ZM_SUCCESS ;
 int ZM_VMMQ_SIZE_MASK ;
 TYPE_1__* wd ;
 int zfwBufFree (int *,int *,int ) ;
 int zm_msg0_mm (int ,char*) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfPutVmmq(zdev_t* dev, zbuf_t* buf)
{
    zmw_get_wlan_dev(dev);
    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if (((wd->vmmqHead + 1) & ZM_VMMQ_SIZE_MASK) != wd->vmmqTail)
    {
        wd->vmmq[wd->vmmqHead] = buf;
        wd->vmmqHead = ((wd->vmmqHead + 1) & ZM_VMMQ_SIZE_MASK);
        zmw_leave_critical_section(dev);
        return ZM_SUCCESS;
    }
    else
    {
        zmw_leave_critical_section(dev);

        zfwBufFree(dev, buf, ZM_SUCCESS);
        zm_msg0_mm(ZM_LV_0, "Packet discarded, VMmQ full");
        return ZM_ERR_VMMQ_FULL;
    }
}
