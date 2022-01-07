
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
typedef TYPE_1__ GNode ;


 int OP_OPMASK ;

__attribute__((used)) static int
TargPropagateCohort(void *cgnp, void *pgnp)
{
    GNode *cgn = (GNode *)cgnp;
    GNode *pgn = (GNode *)pgnp;

    cgn->type |= pgn->type & ~OP_OPMASK;
    return (0);
}
