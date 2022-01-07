
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void const* datum; struct TYPE_6__* nextPtr; } ;
typedef TYPE_1__* LstNode ;
typedef int Lst ;
typedef TYPE_1__* ListNode ;


 scalar_t__ LstIsEmpty (int ) ;
 int LstNodeValid (TYPE_1__*,int ) ;
 int LstValid (int ) ;
 int stub1 (void const*,void const*) ;

LstNode
Lst_FindFrom(Lst l, LstNode ln, const void *d,
      int (*cProc)(const void *, const void *))
{
    ListNode tln;

    if (!LstValid (l) || LstIsEmpty (l) || !LstNodeValid (ln, l)) {
 return ((void*)0);
    }

    tln = ln;

    do {
 if ((*cProc)(tln->datum, d) == 0)
     return (tln);
 tln = tln->nextPtr;
    } while (tln != ln && tln != ((void*)0));

    return ((void*)0);
}
