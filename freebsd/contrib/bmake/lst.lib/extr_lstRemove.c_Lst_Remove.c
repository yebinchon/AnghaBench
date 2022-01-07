
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* firstPtr; int atEnd; TYPE_1__* curPtr; TYPE_1__* prevPtr; scalar_t__ isOpen; TYPE_1__* lastPtr; } ;
struct TYPE_11__ {scalar_t__ useCount; int flags; struct TYPE_11__* prevPtr; struct TYPE_11__* nextPtr; } ;
typedef int ReturnStatus ;
typedef TYPE_1__* LstNode ;
typedef TYPE_2__* Lst ;
typedef TYPE_1__* ListNode ;
typedef TYPE_2__* List ;


 int FAILURE ;
 int LN_DELETED ;
 int LstNodeValid (TYPE_1__*,TYPE_2__*) ;
 int LstValid (TYPE_2__*) ;
 int SUCCESS ;
 int Unknown ;
 int free (TYPE_1__*) ;

ReturnStatus
Lst_Remove(Lst l, LstNode ln)
{
    List list = l;
    ListNode lNode = ln;

    if (!LstValid (l) ||
 !LstNodeValid (ln, l)) {
     return (FAILURE);
    }




    if (lNode->nextPtr != ((void*)0)) {
 lNode->nextPtr->prevPtr = lNode->prevPtr;
    }
    if (lNode->prevPtr != ((void*)0)) {
 lNode->prevPtr->nextPtr = lNode->nextPtr;
    }





    if (list->firstPtr == lNode) {
 list->firstPtr = lNode->nextPtr;
    }
    if (list->lastPtr == lNode) {
 list->lastPtr = lNode->prevPtr;
    }







    if (list->isOpen && (list->curPtr == lNode)) {
 list->curPtr = list->prevPtr;
 if (list->curPtr == ((void*)0)) {
     list->atEnd = Unknown;
 }
    }






    if (list->firstPtr == lNode) {
 list->firstPtr = ((void*)0);
    }





    if (lNode->useCount == 0) {
 free(ln);
    } else {
 lNode->flags |= LN_DELETED;
    }

    return (SUCCESS);
}
