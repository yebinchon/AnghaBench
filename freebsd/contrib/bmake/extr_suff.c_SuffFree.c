
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* name; int searchPath; int parents; int children; int ref; scalar_t__ refCount; } ;
typedef TYPE_1__ Suff ;


 int * Dir_Destroy ;
 int Lst_Destroy (int ,int *) ;
 int Punt (char*,TYPE_1__*,scalar_t__) ;
 TYPE_1__* emptySuff ;
 int free (TYPE_1__*) ;
 TYPE_1__* suffNull ;

__attribute__((used)) static void
SuffFree(void *sp)
{
    Suff *s = (Suff *)sp;

    if (s == suffNull)
 suffNull = ((void*)0);

    if (s == emptySuff)
 emptySuff = ((void*)0);
    Lst_Destroy(s->ref, ((void*)0));
    Lst_Destroy(s->children, ((void*)0));
    Lst_Destroy(s->parents, ((void*)0));
    Lst_Destroy(s->searchPath, Dir_Destroy);

    free(s->name);
    free(s);
}
