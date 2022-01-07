
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int unmade_cohorts; int cohort_num; struct TYPE_5__* centurion; int cohorts; int name; } ;
typedef TYPE_1__ GNode ;


 int Lst_AtEnd (int ,TYPE_1__*) ;
 int OP_DOUBLEDEP ;
 int OP_INVISIBLE ;
 int OP_NOP (int) ;
 int OP_OPMASK ;
 int PARSE_FATAL ;
 int ParseMark (TYPE_1__*) ;
 int Parse_Error (int ,char*,int ) ;
 int TARG_NOHASH ;
 TYPE_1__* Targ_FindNode (int ,int ) ;
 scalar_t__ doing_depend ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int
ParseDoOp(void *gnp, void *opp)
{
    GNode *gn = (GNode *)gnp;
    int op = *(int *)opp;





    if (((op & OP_OPMASK) != (gn->type & OP_OPMASK)) &&
 !OP_NOP(gn->type) && !OP_NOP(op))
    {
 Parse_Error(PARSE_FATAL, "Inconsistent operator for %s", gn->name);
 return (1);
    }

    if ((op == OP_DOUBLEDEP) && ((gn->type & OP_OPMASK) == OP_DOUBLEDEP)) {
 GNode *cohort;





 gn->type |= op & ~OP_OPMASK;

 cohort = Targ_FindNode(gn->name, TARG_NOHASH);
 if (doing_depend)
     ParseMark(cohort);







 cohort->type = op | OP_INVISIBLE;
 (void)Lst_AtEnd(gn->cohorts, cohort);
 cohort->centurion = gn;
 gn->unmade_cohorts += 1;
 snprintf(cohort->cohort_num, sizeof cohort->cohort_num, "#%d",
  gn->unmade_cohorts);
    } else {




 gn->type |= op;
    }

    return (0);
}
