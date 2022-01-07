
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {void* l; TYPE_2__* s; } ;
struct TYPE_7__ {int children; void* cp; TYPE_1__* suff; int * node; struct TYPE_7__* parent; int pref; int file; } ;
struct TYPE_6__ {int flags; char* name; int refCount; } ;
typedef TYPE_1__ Suff ;
typedef TYPE_2__ Src ;
typedef TYPE_3__ LstSrc ;


 int FALSE ;
 int Lst_AtEnd (void*,TYPE_2__*) ;
 int Lst_ForEach (void*,int ,int *) ;
 void* Lst_Init (int ) ;
 int PrintAddr ;
 int SUFF_NULL ;
 TYPE_2__* bmake_malloc (int) ;
 int bmake_strdup (int ) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;
 int str_concat (int ,char*,int ) ;

__attribute__((used)) static int
SuffAddSrc(void *sp, void *lsp)
{
    Suff *s = (Suff *)sp;
    LstSrc *ls = (LstSrc *)lsp;
    Src *s2;
    Src *targ;

    targ = ls->s;

    if ((s->flags & SUFF_NULL) && (*s->name != '\0')) {





 s2 = bmake_malloc(sizeof(Src));
 s2->file = bmake_strdup(targ->pref);
 s2->pref = targ->pref;
 s2->parent = targ;
 s2->node = ((void*)0);
 s2->suff = s;
 s->refCount++;
 s2->children = 0;
 targ->children += 1;
 (void)Lst_AtEnd(ls->l, s2);







    }
    s2 = bmake_malloc(sizeof(Src));
    s2->file = str_concat(targ->pref, s->name, 0);
    s2->pref = targ->pref;
    s2->parent = targ;
    s2->node = ((void*)0);
    s2->suff = s;
    s->refCount++;
    s2->children = 0;
    targ->children += 1;
    (void)Lst_AtEnd(ls->l, s2);
    return(0);
}
