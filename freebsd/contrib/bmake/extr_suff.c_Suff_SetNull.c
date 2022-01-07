
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;


 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,char*,int ) ;
 int PARSE_WARNING ;
 int Parse_Error (int ,char*,char*) ;
 int SUFF_NULL ;
 int SuffSuffHasNameP ;
 TYPE_1__* suffNull ;
 int sufflist ;

void
Suff_SetNull(char *name)
{
    Suff *s;
    LstNode ln;

    ln = Lst_Find(sufflist, name, SuffSuffHasNameP);
    if (ln != ((void*)0)) {
 s = (Suff *)Lst_Datum(ln);
 if (suffNull != ((void*)0)) {
     suffNull->flags &= ~SUFF_NULL;
 }
 s->flags |= SUFF_NULL;



 suffNull = s;
    } else {
 Parse_Error(PARSE_WARNING, "Desired null suffix %s not defined.",
       name);
    }
}
