
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int type; int children; } ;
typedef TYPE_1__ GNode ;


 int ALLSRC ;
 int DONE_ALLSRC ;
 int Lst_ForEach (int ,int ,TYPE_1__*) ;
 int MakeAddAllSrc ;
 int MakeUnmark ;
 int OODATE ;
 int OP_JOIN ;
 int TARGET ;
 int Var_Exists (int ,TYPE_1__*) ;
 int Var_Set (int ,char*,TYPE_1__*,int ) ;
 char* Var_Value (int ,TYPE_1__*,char**) ;
 int free (char*) ;

void
Make_DoAllVar(GNode *gn)
{
    if (gn->flags & DONE_ALLSRC)
 return;

    Lst_ForEach(gn->children, MakeUnmark, gn);
    Lst_ForEach(gn->children, MakeAddAllSrc, gn);

    if (!Var_Exists (OODATE, gn)) {
 Var_Set(OODATE, "", gn, 0);
    }
    if (!Var_Exists (ALLSRC, gn)) {
 Var_Set(ALLSRC, "", gn, 0);
    }

    if (gn->type & OP_JOIN) {
 char *p1;
 Var_Set(TARGET, Var_Value(ALLSRC, gn, &p1), gn, 0);
 free(p1);
    }
    gn->flags |= DONE_ALLSRC;
}
