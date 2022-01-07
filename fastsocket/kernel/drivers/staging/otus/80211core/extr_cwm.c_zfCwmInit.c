
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int zdev_t ;
struct TYPE_3__ {int cw_enable; int cw_width; void* cw_mode; } ;
struct TYPE_4__ {int wlanMode; TYPE_1__ cwm; } ;


 void* CWM_MODE2040 ;
 int CWM_WIDTH20 ;
 int CWM_WIDTH40 ;




 TYPE_2__* wd ;
 int zmw_get_wlan_dev (int *) ;

void zfCwmInit(zdev_t* dev) {

    zmw_get_wlan_dev(dev);

    switch (wd->wlanMode) {
    case 131:
        wd->cwm.cw_mode = CWM_MODE2040;
        wd->cwm.cw_width = CWM_WIDTH40;
        wd->cwm.cw_enable = 1;
        break;
    case 129:
    case 128:
    case 130:
    default:
        wd->cwm.cw_mode = CWM_MODE2040;
        wd->cwm.cw_width = CWM_WIDTH20;
        wd->cwm.cw_enable = 1;
        break;
    }
}
