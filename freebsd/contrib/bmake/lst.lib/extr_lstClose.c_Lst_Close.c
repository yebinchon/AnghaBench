
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int atEnd; int isOpen; } ;
typedef TYPE_1__* Lst ;
typedef TYPE_1__* List ;


 int FALSE ;
 scalar_t__ LstValid (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int Unknown ;

void
Lst_Close(Lst l)
{
    List list = l;

    if (LstValid(l) == TRUE) {
 list->isOpen = FALSE;
 list->atEnd = Unknown;
    }
}
