
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * searchPath; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef int * Lst ;


 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,char*,int ) ;
 int SuffSuffHasNameP ;
 int sufflist ;

Lst
Suff_GetPath(char *sname)
{
    LstNode ln;
    Suff *s;

    ln = Lst_Find(sufflist, sname, SuffSuffHasNameP);
    if (ln == ((void*)0)) {
 return ((void*)0);
    } else {
 s = (Suff *)Lst_Datum(ln);
 return (s->searchPath);
    }
}
