
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * fname; scalar_t__ lineno; int * suffix; void* commands; int context; void* order_succ; void* order_pred; void* children; void* parents; void* cohorts; void* iParents; int * cmgn; scalar_t__ mtime; scalar_t__ checked; scalar_t__ flags; int made; int * centurion; scalar_t__* cohort_num; scalar_t__ unmade_cohorts; scalar_t__ unmade; scalar_t__ type; int * path; int * uname; int name; } ;
typedef TYPE_1__ GNode ;


 int FALSE ;
 int Hash_InitTable (int *,int ) ;
 int Lst_AtEnd (int *,TYPE_1__*) ;
 void* Lst_Init (int ) ;
 scalar_t__ OP_LIB ;
 int UNMADE ;
 int * allGNs ;
 TYPE_1__* bmake_malloc (int) ;
 int bmake_strdup (char const*) ;

GNode *
Targ_NewGN(const char *name)
{
    GNode *gn;

    gn = bmake_malloc(sizeof(GNode));
    gn->name = bmake_strdup(name);
    gn->uname = ((void*)0);
    gn->path = ((void*)0);
    if (name[0] == '-' && name[1] == 'l') {
 gn->type = OP_LIB;
    } else {
 gn->type = 0;
    }
    gn->unmade = 0;
    gn->unmade_cohorts = 0;
    gn->cohort_num[0] = 0;
    gn->centurion = ((void*)0);
    gn->made = UNMADE;
    gn->flags = 0;
    gn->checked = 0;
    gn->mtime = 0;
    gn->cmgn = ((void*)0);
    gn->iParents = Lst_Init(FALSE);
    gn->cohorts = Lst_Init(FALSE);
    gn->parents = Lst_Init(FALSE);
    gn->children = Lst_Init(FALSE);
    gn->order_pred = Lst_Init(FALSE);
    gn->order_succ = Lst_Init(FALSE);
    Hash_InitTable(&gn->context, 0);
    gn->commands = Lst_Init(FALSE);
    gn->suffix = ((void*)0);
    gn->lineno = 0;
    gn->fname = ((void*)0);







    return (gn);
}
