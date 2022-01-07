
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int type; char* name; int children; } ;
struct TYPE_11__ {TYPE_4__** gn; scalar_t__ r; TYPE_1__* s; } ;
struct TYPE_10__ {char* name; int parents; int children; } ;
struct TYPE_9__ {int name; } ;
typedef TYPE_2__ Suff ;
typedef TYPE_3__ GNodeSuff ;
typedef TYPE_4__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int FALSE ;
 int Lst_Destroy (int ,int *) ;
 int Lst_Init (int ) ;
 int OP_NOTARGET ;
 unsigned int OP_TRANSFORM ;
 int SUFF ;
 int SuffInsert (int ,TYPE_2__*) ;
 scalar_t__ SuffParseTransform (char*,TYPE_2__**,TYPE_2__**) ;
 scalar_t__ TRUE ;
 int Targ_SetMain (TYPE_4__*) ;
 int debug_file ;
 int fprintf (int ,char*,char*,char*) ;
 char* strstr (char*,int ) ;

__attribute__((used)) static int
SuffScanTargets(void *targetp, void *gsp)
{
    GNode *target = (GNode *)targetp;
    GNodeSuff *gs = (GNodeSuff *)gsp;
    Suff *s, *t;
    char *ptr;

    if (*gs->gn == ((void*)0) && gs->r && (target->type & OP_NOTARGET) == 0) {
 *gs->gn = target;
 Targ_SetMain(target);
 return 1;
    }

    if ((unsigned int)target->type == OP_TRANSFORM)
 return 0;

    if ((ptr = strstr(target->name, gs->s->name)) == ((void*)0) ||
 ptr == target->name)
 return 0;

    if (SuffParseTransform(target->name, &s, &t)) {
 if (*gs->gn == target) {
     gs->r = TRUE;
     *gs->gn = ((void*)0);
     Targ_SetMain(((void*)0));
 }
 Lst_Destroy(target->children, ((void*)0));
 target->children = Lst_Init(FALSE);
 target->type = OP_TRANSFORM;



 if (DEBUG(SUFF)) {
     fprintf(debug_file, "defining transformation from `%s' to `%s'\n",
  s->name, t->name);
 }
 SuffInsert(t->children, s);
 SuffInsert(s->parents, t);
    }
    return 0;
}
