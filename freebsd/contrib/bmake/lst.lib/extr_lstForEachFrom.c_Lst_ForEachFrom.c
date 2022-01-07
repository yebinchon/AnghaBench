
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__* firstPtr; } ;
struct TYPE_9__ {void* datum; int flags; struct TYPE_9__* nextPtr; int useCount; } ;
typedef TYPE_1__* LstNode ;
typedef TYPE_2__* Lst ;
typedef TYPE_1__* ListNode ;
typedef TYPE_2__* List ;
typedef int Boolean ;


 int LN_DELETED ;
 scalar_t__ LstIsEmpty (TYPE_2__*) ;
 int LstValid (TYPE_2__*) ;
 int free (char*) ;
 int stub1 (void*,void*) ;

int
Lst_ForEachFrom(Lst l, LstNode ln, int (*proc)(void *, void *),
  void *d)
{
    ListNode tln = ln;
    List list = l;
    ListNode next;
    Boolean done;
    int result;

    if (!LstValid (list) || LstIsEmpty (list)) {
 return 0;
    }

    do {





 next = tln->nextPtr;
 done = (next == ((void*)0) || next == list->firstPtr);

 (void) tln->useCount++;
 result = (*proc) (tln->datum, d);
 (void) tln->useCount--;






 if (next != tln->nextPtr) {
  next = tln->nextPtr;
  done = 0;
 }

 if (tln->flags & LN_DELETED) {
     free((char *)tln);
 }
 tln = next;
    } while (!result && !LstIsEmpty(list) && !done);

    return result;
}
