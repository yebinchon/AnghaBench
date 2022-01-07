
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ isOpen; scalar_t__ atEnd; TYPE_1__* firstPtr; TYPE_1__* curPtr; TYPE_1__* prevPtr; } ;
struct TYPE_8__ {struct TYPE_8__* nextPtr; } ;
typedef TYPE_1__* LstNode ;
typedef TYPE_2__* Lst ;
typedef TYPE_1__* ListNode ;
typedef TYPE_2__* List ;


 scalar_t__ FALSE ;
 scalar_t__ LstValid (TYPE_2__*) ;
 void* Middle ;
 void* Tail ;
 scalar_t__ Unknown ;

LstNode
Lst_Next(Lst l)
{
    ListNode tln;
    List list = l;

    if ((LstValid (l) == FALSE) ||
 (list->isOpen == FALSE)) {
     return ((void*)0);
    }

    list->prevPtr = list->curPtr;

    if (list->curPtr == ((void*)0)) {
 if (list->atEnd == Unknown) {





     list->curPtr = tln = list->firstPtr;
     list->atEnd = Middle;
 } else {
     tln = ((void*)0);
     list->atEnd = Tail;
 }
    } else {
 tln = list->curPtr->nextPtr;
 list->curPtr = tln;

 if (tln == list->firstPtr || tln == ((void*)0)) {



     list->atEnd = Tail;
 } else {



     list->atEnd = Middle;
 }
    }

    return (tln);
}
