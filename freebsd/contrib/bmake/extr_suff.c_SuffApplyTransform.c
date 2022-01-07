
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int unmade; char* name; int iParents; int children; int parents; } ;
struct TYPE_11__ {char* name; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef TYPE_2__ GNode ;
typedef int Boolean ;


 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 int Lst_AtEnd (int ,TYPE_2__*) ;
 scalar_t__ Lst_Datum (int *) ;
 int * Lst_Find (int ,char*,int ) ;
 int * Lst_Last (int ) ;
 int * Lst_Succ (int *) ;
 int Make_HandleUse (TYPE_2__*,TYPE_2__*) ;
 int SUFF ;
 int SuffExpandChildren (int *,TYPE_2__*) ;
 int SuffGNHasNameP ;
 int TRUE ;
 int debug_file ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int free (char*) ;
 char* str_concat (char*,char*,int ) ;
 int transforms ;

__attribute__((used)) static Boolean
SuffApplyTransform(GNode *tGn, GNode *sGn, Suff *t, Suff *s)
{
    LstNode ln, nln;
    char *tname;
    GNode *gn;




    (void)Lst_AtEnd(tGn->children, sGn);
    (void)Lst_AtEnd(sGn->parents, tGn);
    tGn->unmade += 1;




    tname = str_concat(s->name, t->name, 0);
    ln = Lst_Find(transforms, tname, SuffGNHasNameP);
    free(tname);

    if (ln == ((void*)0)) {





 return(FALSE);
    }

    gn = (GNode *)Lst_Datum(ln);

    if (DEBUG(SUFF)) {
 fprintf(debug_file, "\tapplying %s -> %s to \"%s\"\n", s->name, t->name, tGn->name);
    }




    ln = Lst_Last(tGn->children);




    (void)Make_HandleUse(gn, tGn);




    for (ln = Lst_Succ(ln); ln != ((void*)0); ln = nln) {
 nln = Lst_Succ(ln);
 SuffExpandChildren(ln, tGn);
    }





    (void)Lst_AtEnd(sGn->iParents, tGn);

    return(TRUE);
}
