
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int flags; int type; char* name; int children; int cohorts; } ;
typedef int * LstNode ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int DONE_WAIT ;
 int FALSE ;
 int LST_CONCLINK ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int Lst_AtFront (int ,TYPE_1__*) ;
 int Lst_Close (int ) ;
 int Lst_Concat (int ,int ,int ) ;
 TYPE_1__* Lst_Datum (int *) ;
 TYPE_1__* Lst_DeQueue (int ) ;
 int Lst_Destroy (int ,int *) ;
 int Lst_Duplicate (int ,int *) ;
 int * Lst_First (int ) ;
 int Lst_ForEach (int ,int ,TYPE_1__*) ;
 int Lst_ForEachFrom (int ,int *,int ,TYPE_1__*) ;
 int Lst_Init (int ) ;
 int Lst_IsEmpty (int ) ;
 int * Lst_Next (int ) ;
 int Lst_Open (int ) ;
 int MAKE ;
 int MakeBuildChild (TYPE_1__*,int *) ;
 int OP_DEPENDS ;
 int OP_DOUBLEDEP ;
 int OP_PHONY ;
 int OP_WAIT ;
 int REMAKE ;
 int Targ_List () ;
 TYPE_1__* Targ_NewGN (char*) ;
 int add_wait_dep ;
 int debug_file ;
 int fprintf (int ,char*,char*) ;
 int link_parent ;

__attribute__((used)) static void
Make_ProcessWait(Lst targs)
{
    GNode *pgn;
    GNode *cgn;
    LstNode owln;
    Lst examine;
    LstNode ln;







    pgn = Targ_NewGN(".MAIN");
    pgn->flags = REMAKE;
    pgn->type = OP_PHONY | OP_DEPENDS;

    Lst_AtFront(Targ_List(), pgn);

    Lst_ForEach(targs, link_parent, pgn);


    MakeBuildChild(pgn, ((void*)0));

    examine = Lst_Init(FALSE);
    Lst_AtEnd(examine, pgn);

    while (!Lst_IsEmpty (examine)) {
 pgn = Lst_DeQueue(examine);


 if (pgn->flags & DONE_WAIT)
     continue;
 pgn->flags |= DONE_WAIT;
 if (DEBUG(MAKE))
     fprintf(debug_file, "Make_ProcessWait: examine %s\n", pgn->name);

 if ((pgn->type & OP_DOUBLEDEP) && !Lst_IsEmpty (pgn->cohorts)) {

     Lst new;
     new = Lst_Duplicate(pgn->cohorts, ((void*)0));
     Lst_Concat(new, examine, LST_CONCLINK);
     examine = new;
 }

 owln = Lst_First(pgn->children);
 Lst_Open(pgn->children);
 for (; (ln = Lst_Next(pgn->children)) != ((void*)0); ) {
     cgn = Lst_Datum(ln);
     if (cgn->type & OP_WAIT) {

  Lst_ForEachFrom(pgn->children, owln, add_wait_dep, cgn);
  owln = ln;
     } else {
  Lst_AtEnd(examine, cgn);
     }
 }
 Lst_Close(pgn->children);
    }

    Lst_Destroy(examine, ((void*)0));
}
