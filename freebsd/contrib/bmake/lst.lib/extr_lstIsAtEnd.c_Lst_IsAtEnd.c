
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ atEnd; int isOpen; } ;
typedef TYPE_1__* Lst ;
typedef TYPE_1__* List ;
typedef int Boolean ;


 scalar_t__ Head ;
 int LstValid (TYPE_1__*) ;
 scalar_t__ Tail ;

Boolean
Lst_IsAtEnd(Lst l)
{
    List list = l;

    return (!LstValid (l) || !list->isOpen ||
     (list->atEnd == Head) || (list->atEnd == Tail));
}
