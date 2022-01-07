
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct dest {scalar_t__ tid_tx; struct dest* next; } ;
struct TYPE_2__ {struct dest** Head; } ;
typedef scalar_t__ TID_TX ;


 TYPE_1__ DESTQ ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

u16_t zfAggDestExist(zdev_t* dev, u16_t Qtype, u16_t ac, TID_TX tid_tx, void* vtxq) {
    struct dest* dest;
    u16_t exist = 0;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if (!DESTQ.Head[ac]) {
        exist = 0;
    }
    else {
        dest = DESTQ.Head[ac];
        if (dest->tid_tx == tid_tx) {
            exist = 1;
        }
        else {
            while (dest->next != DESTQ.Head[ac]) {
                dest = dest->next;
                if (dest->tid_tx == tid_tx){
                    exist = 1;
                    break;
                }
            }
        }
    }

    zmw_leave_critical_section(dev);

    return exist;
}
