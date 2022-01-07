
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int refCount; int r; struct TYPE_6__* s; int ** gn; scalar_t__ flags; scalar_t__ sNum; void* ref; void* parents; void* children; void* searchPath; int name; int nameLen; } ;
typedef TYPE_1__ Suff ;
typedef int * LstNode ;
typedef TYPE_1__ GNodeSuff ;
typedef int GNode ;


 int FALSE ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int * Lst_Find (int ,char*,int ) ;
 int Lst_ForEach (int ,int ,TYPE_1__*) ;
 void* Lst_Init (int ) ;
 int SuffRebuildGraph ;
 int SuffScanTargets ;
 int SuffSuffHasNameP ;
 int Targ_List () ;
 TYPE_1__* bmake_malloc (int) ;
 int bmake_strdup (char*) ;
 int sNum ;
 int strlen (int ) ;
 int sufflist ;
 int transforms ;

void
Suff_AddSuffix(char *str, GNode **gn)
{
    Suff *s;
    LstNode ln;
    GNodeSuff gs;

    ln = Lst_Find(sufflist, str, SuffSuffHasNameP);
    if (ln == ((void*)0)) {
 s = bmake_malloc(sizeof(Suff));

 s->name = bmake_strdup(str);
 s->nameLen = strlen(s->name);
 s->searchPath = Lst_Init(FALSE);
 s->children = Lst_Init(FALSE);
 s->parents = Lst_Init(FALSE);
 s->ref = Lst_Init(FALSE);
 s->sNum = sNum++;
 s->flags = 0;
 s->refCount = 1;

 (void)Lst_AtEnd(sufflist, s);






 gs.gn = gn;
 gs.s = s;
 gs.r = FALSE;
 Lst_ForEach(Targ_List(), SuffScanTargets, &gs);




 Lst_ForEach(transforms, SuffRebuildGraph, s);
    }
}
