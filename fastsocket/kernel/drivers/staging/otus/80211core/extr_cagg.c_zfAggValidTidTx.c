
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct TYPE_2__ {scalar_t__* aggQPool; } ;
typedef scalar_t__ TID_TX ;


 size_t ZM_AGG_POOL_SIZE ;
 TYPE_1__* wd ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggValidTidTx(zdev_t* dev, TID_TX tid_tx) {
    u16_t i, valid = 0;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    for (i=0; i<ZM_AGG_POOL_SIZE; i++)
    {
        if (wd->aggQPool[i] == tid_tx)
        {
            valid = 1;
            break;
        }
        else {
        }
    }
    zmw_leave_critical_section(dev);

    return valid;
}
