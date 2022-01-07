
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ made; int flags; } ;
typedef TYPE_1__ GNode ;


 scalar_t__ DEFERRED ;
 int DONE_ORDER ;
 scalar_t__ MakeBuildChild (TYPE_1__*,void*) ;

__attribute__((used)) static int
MakeBuildParent(void *v_pn, void *toBeMade_next)
{
    GNode *pn = v_pn;

    if (pn->made != DEFERRED)
 return 0;

    if (MakeBuildChild(pn, toBeMade_next) == 0) {

 pn->flags |= DONE_ORDER;
    }

    return 0;
}
