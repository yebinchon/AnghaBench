
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;


 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,char*,int ) ;
 int SUFF_INCLUDE ;
 int SuffSuffHasNameP ;
 int sufflist ;

void
Suff_AddInclude(char *sname)
{
    LstNode ln;
    Suff *s;

    ln = Lst_Find(sufflist, sname, SuffSuffHasNameP);
    if (ln != ((void*)0)) {
 s = (Suff *)Lst_Datum(ln);
 s->flags |= SUFF_INCLUDE;
    }
}
