
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* firstPtr; } ;
struct TYPE_7__ {void* datum; struct TYPE_7__* nextPtr; } ;
typedef TYPE_1__* LstNode ;
typedef TYPE_2__* Lst ;
typedef TYPE_1__* ListNode ;
typedef TYPE_2__* List ;



LstNode
Lst_Member(Lst l, void *d)
{
    List list = l;
    ListNode lNode;

    if (list == ((void*)0)) {
 return ((void*)0);
    }
    lNode = list->firstPtr;
    if (lNode == ((void*)0)) {
 return ((void*)0);
    }

    do {
 if (lNode->datum == d) {
     return lNode;
 }
 lNode = lNode->nextPtr;
    } while (lNode != ((void*)0) && lNode != list->firstPtr);

    return ((void*)0);
}
