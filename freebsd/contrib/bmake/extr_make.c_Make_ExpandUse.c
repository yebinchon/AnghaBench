
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {int flags; char* name; int cohort_num; int type; char* path; scalar_t__ unmade; int children; struct TYPE_15__* cohorts; } ;
typedef TYPE_1__* Lst ;
typedef TYPE_1__ GNode ;


 int ARCHIVE ;
 scalar_t__ DEBUG (int ) ;
 int Dir_MTime (TYPE_1__*,int ) ;
 int LST_CONCLINK ;
 int Lst_Concat (TYPE_1__*,TYPE_1__*,int ) ;
 scalar_t__ Lst_DeQueue (TYPE_1__*) ;
 int Lst_Destroy (TYPE_1__*,int *) ;
 TYPE_1__* Lst_Duplicate (TYPE_1__*,int *) ;
 int Lst_ForEach (int ,int ,TYPE_1__*) ;
 int Lst_IsEmpty (TYPE_1__*) ;
 int MAKE ;
 int MEMBER ;
 int MakeAddChild ;
 int MakeFindChild ;
 int MakeHandleUse ;
 int MakeUnmark ;
 int OP_ARCHV ;
 int OP_DOUBLEDEP ;
 int OP_MADE ;
 int REMAKE ;
 int Suff_FindDeps (TYPE_1__*) ;
 int TARGET ;
 int Var_Set (int ,char*,TYPE_1__*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,char*,int) ;
 int printf (char*,char*,int,scalar_t__) ;
 char* strchr (char*,char) ;

void
Make_ExpandUse(Lst targs)
{
    GNode *gn;
    Lst examine;

    examine = Lst_Duplicate(targs, ((void*)0));
    while (!Lst_IsEmpty (examine)) {
 gn = (GNode *)Lst_DeQueue(examine);

 if (gn->flags & REMAKE)

     continue;
 gn->flags |= REMAKE;
 if (DEBUG(MAKE))
     fprintf(debug_file, "Make_ExpandUse: examine %s%s\n",
      gn->name, gn->cohort_num);

 if ((gn->type & OP_DOUBLEDEP) && !Lst_IsEmpty (gn->cohorts)) {

     Lst new;
     new = Lst_Duplicate(gn->cohorts, ((void*)0));
     Lst_Concat(new, examine, LST_CONCLINK);
     examine = new;
 }







 if (gn->type & OP_ARCHV) {
     char *eoa, *eon;
     eoa = strchr(gn->name, '(');
     eon = strchr(gn->name, ')');
     if (eoa == ((void*)0) || eon == ((void*)0))
  continue;
     *eoa = '\0';
     *eon = '\0';
     Var_Set(MEMBER, eoa + 1, gn, 0);
     Var_Set(ARCHIVE, gn->name, gn, 0);
     *eoa = '(';
     *eon = ')';
 }

 (void)Dir_MTime(gn, 0);
 Var_Set(TARGET, gn->path ? gn->path : gn->name, gn, 0);
 Lst_ForEach(gn->children, MakeUnmark, gn);
 Lst_ForEach(gn->children, MakeHandleUse, gn);

 if ((gn->type & OP_MADE) == 0)
     Suff_FindDeps(gn);
 else {

     Lst_ForEach(gn->children, MakeFindChild, gn);
     if (gn->unmade != 0)
      printf("Warning: %s%s still has %d unmade children\n",
       gn->name, gn->cohort_num, gn->unmade);
 }

 if (gn->unmade != 0)
     Lst_ForEach(gn->children, MakeAddChild, examine);
    }

    Lst_Destroy(examine, ((void*)0));
}
