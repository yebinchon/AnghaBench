
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int cohort_num; int made; int type; scalar_t__ unmade_cohorts; scalar_t__ unmade; scalar_t__ cohorts; scalar_t__ order_pred; } ;
typedef TYPE_1__ GNode ;


 scalar_t__ DEBUG (int ) ;
 scalar_t__ DEFERRED ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int Lst_ForEach (scalar_t__,int (*) (void*,void*),void*) ;
 int Lst_InsertBefore (int ,void*,TYPE_1__*) ;
 int MAKE ;
 int MakeCheckOrder (void*,void*) ;
 int OP_WAIT ;
 scalar_t__ REQUESTED ;
 int debug_file ;
 int fprintf (int ,char*,char*,int,...) ;
 int toBeMade ;

__attribute__((used)) static int
MakeBuildChild(void *v_cn, void *toBeMade_next)
{
    GNode *cn = v_cn;

    if (DEBUG(MAKE))
 fprintf(debug_file, "MakeBuildChild: inspect %s%s, made %d, type %x\n",
     cn->name, cn->cohort_num, cn->made, cn->type);
    if (cn->made > DEFERRED)
 return 0;


    if (cn->order_pred && Lst_ForEach(cn->order_pred, MakeCheckOrder, 0)) {

 cn->made = DEFERRED;
 return 0;
    }

    if (DEBUG(MAKE))
 fprintf(debug_file, "MakeBuildChild: schedule %s%s\n",
  cn->name, cn->cohort_num);

    cn->made = REQUESTED;
    if (toBeMade_next == ((void*)0))
 Lst_AtEnd(toBeMade, cn);
    else
 Lst_InsertBefore(toBeMade, toBeMade_next, cn);

    if (cn->unmade_cohorts != 0)
 Lst_ForEach(cn->cohorts, MakeBuildChild, toBeMade_next);





    return cn->type & OP_WAIT && cn->unmade > 0;
}
