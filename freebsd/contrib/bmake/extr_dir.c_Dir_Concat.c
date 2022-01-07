
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int refCount; } ;
typedef TYPE_1__ Path ;
typedef int * LstNode ;
typedef int Lst ;


 int Lst_AtEnd (int ,TYPE_1__*) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_First (int ) ;
 int * Lst_Member (int ,TYPE_1__*) ;
 int * Lst_Succ (int *) ;

void
Dir_Concat(Lst path1, Lst path2)
{
    LstNode ln;
    Path *p;

    for (ln = Lst_First(path2); ln != ((void*)0); ln = Lst_Succ(ln)) {
 p = (Path *)Lst_Datum(ln);
 if (Lst_Member(path1, p) == ((void*)0)) {
     p->refCount += 1;
     (void)Lst_AtEnd(path1, p);
 }
    }
}
