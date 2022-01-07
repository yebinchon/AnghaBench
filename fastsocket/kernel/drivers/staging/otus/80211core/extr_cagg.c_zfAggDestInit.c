
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zdev_t ;
typedef int u16_t ;
struct TYPE_2__ {void (* init ) (int *) ;scalar_t__ ppri; int exist; int getNext; int delete; int insert; int ** Head; } ;


 TYPE_1__ DESTQ ;
 int zfAggDestDelete ;
 int zfAggDestExist ;
 int zfAggDestGetNext ;
 int zfAggDestInsert ;
 int zmw_get_wlan_dev (int *) ;

void zfAggDestInit(zdev_t* dev)
{
    u16_t i;
    zmw_get_wlan_dev(dev);



    for (i=0; i<4; i++) {



        DESTQ.Head[i] = ((void*)0);
    }
    DESTQ.insert = zfAggDestInsert;
    DESTQ.delete = zfAggDestDelete;
    DESTQ.init = zfAggDestInit;
    DESTQ.getNext = zfAggDestGetNext;
    DESTQ.exist = zfAggDestExist;
    DESTQ.ppri = 0;
    return;
}
