
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef size_t u16_t ;
struct dest {struct dest* next; } ;
struct TYPE_2__ {struct dest** dest; } ;


 TYPE_1__ DESTQ ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

struct dest* zfAggDestGetNext(zdev_t* dev, u16_t ac)
{
    struct dest *dest = ((void*)0);
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    zmw_enter_critical_section(dev);
    if (DESTQ.dest[ac]) {
        dest = DESTQ.dest[ac];
        DESTQ.dest[ac] = DESTQ.dest[ac]->next;
    }
    else {
        dest = ((void*)0);
    }
    zmw_leave_critical_section(dev);

    return dest;
}
