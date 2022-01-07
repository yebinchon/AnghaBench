
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refCount; int flags; scalar_t__ sNum; void* ref; void* parents; void* children; void* searchPath; scalar_t__ nameLen; int name; } ;
typedef int Suff ;


 int Dir_Concat (void*,int ) ;
 int FALSE ;
 int LST_CONCLINK ;
 int Lst_Concat (int ,void*,int ) ;
 void* Lst_Init (int ) ;
 int SUFF_NULL ;
 int SuffFree (TYPE_1__*) ;
 TYPE_1__* bmake_malloc (int) ;
 int bmake_strdup (char*) ;
 int dirSearchPath ;
 TYPE_1__* emptySuff ;
 scalar_t__ sNum ;
 int suffClean ;
 TYPE_1__* suffNull ;
 void* sufflist ;

void
Suff_ClearSuffixes(void)
{



    sufflist = Lst_Init(FALSE);
    sNum = 0;
    if (suffNull)
 SuffFree(suffNull);
    emptySuff = suffNull = bmake_malloc(sizeof(Suff));

    suffNull->name = bmake_strdup("");
    suffNull->nameLen = 0;
    suffNull->searchPath = Lst_Init(FALSE);
    Dir_Concat(suffNull->searchPath, dirSearchPath);
    suffNull->children = Lst_Init(FALSE);
    suffNull->parents = Lst_Init(FALSE);
    suffNull->ref = Lst_Init(FALSE);
    suffNull->sNum = sNum++;
    suffNull->flags = SUFF_NULL;
    suffNull->refCount = 1;
}
