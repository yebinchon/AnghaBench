
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int refCount; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef int Lst ;


 int * Lst_Member (int ,void*) ;
 int Lst_Remove (int ,int *) ;

__attribute__((used)) static void
SuffUnRef(void *lp, void *sp)
{
    Lst l = (Lst) lp;

    LstNode ln = Lst_Member(l, sp);
    if (ln != ((void*)0)) {
 Lst_Remove(l, ln);
 ((Suff *)sp)->refCount--;
    }
}
