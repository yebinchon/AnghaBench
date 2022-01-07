
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int flags; int type; char* name; int cohort_num; } ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int Lst_EnQueue (int ,TYPE_1__*) ;
 int MAKE ;
 int OP_USE ;
 int OP_USEBEFORE ;
 int REMAKE ;
 int debug_file ;
 int fprintf (int ,char*,char*,int ) ;

__attribute__((used)) static int
MakeAddChild(void *gnp, void *lp)
{
    GNode *gn = (GNode *)gnp;
    Lst l = (Lst) lp;

    if ((gn->flags & REMAKE) == 0 && !(gn->type & (OP_USE|OP_USEBEFORE))) {
 if (DEBUG(MAKE))
     fprintf(debug_file, "MakeAddChild: need to examine %s%s\n",
  gn->name, gn->cohort_num);
 (void)Lst_EnQueue(l, gn);
    }
    return (0);
}
