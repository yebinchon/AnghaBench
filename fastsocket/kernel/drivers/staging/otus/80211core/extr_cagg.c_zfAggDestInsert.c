
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef scalar_t__ u16_t ;
struct dest {struct dest* next; void* vtxq; void* tid_tx; scalar_t__ Qtype; } ;
struct TYPE_2__ {struct dest** dest; struct dest** Head; } ;
typedef void* TID_TX ;


 TYPE_1__ DESTQ ;
 struct dest* zfwMemAllocate (int *,int) ;
 int zmw_declare_for_critical_section () ;
 int zmw_enter_critical_section (int *) ;
 int zmw_get_wlan_dev (int *) ;
 int zmw_leave_critical_section (int *) ;

void zfAggDestInsert(zdev_t* dev, u16_t Qtype, u16_t ac, TID_TX tid_tx, void* vtxq)
{
    struct dest* new_dest;
    zmw_get_wlan_dev(dev);

    zmw_declare_for_critical_section();

    new_dest = zfwMemAllocate(dev, sizeof(struct dest));
    if(!new_dest)
    {
        return;
    }
    new_dest->Qtype = Qtype;
    new_dest->tid_tx = tid_tx;
    if (0 == Qtype)
        new_dest->tid_tx = tid_tx;
    else
        new_dest->vtxq = vtxq;
    if (!DESTQ.Head[ac]) {

        zmw_enter_critical_section(dev);
        new_dest->next = new_dest;
        DESTQ.Head[ac] = DESTQ.dest[ac] = new_dest;
        zmw_leave_critical_section(dev);
    }
    else {

        zmw_enter_critical_section(dev);
        new_dest->next = DESTQ.dest[ac]->next;
        DESTQ.dest[ac]->next = new_dest;
        zmw_leave_critical_section(dev);
    }



    return;
}
