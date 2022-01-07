
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* datum; } ;
typedef int Lst ;
typedef TYPE_1__* ListNode ;


 scalar_t__ FAILURE ;
 TYPE_1__* Lst_First (int ) ;
 scalar_t__ Lst_Remove (int ,TYPE_1__*) ;

void *
Lst_DeQueue(Lst l)
{
    void *rd;
    ListNode tln;

    tln = Lst_First(l);
    if (tln == ((void*)0)) {
 return ((void*)0);
    }

    rd = tln->datum;
    if (Lst_Remove(l, tln) == FAILURE) {
 return ((void*)0);
    } else {
 return (rd);
    }
}
