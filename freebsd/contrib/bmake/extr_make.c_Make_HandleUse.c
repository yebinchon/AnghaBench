
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; char* name; char* uname; int unmade; int children; int parents; int commands; } ;
typedef int * LstNode ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 int LST_CONCNEW ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 int Lst_Close (int ) ;
 int Lst_Concat (int ,int ,int ) ;
 scalar_t__ Lst_Datum (int *) ;
 int Lst_Destroy (int ,int *) ;
 int Lst_Duplicate (int ,int *) ;
 scalar_t__ Lst_IsEmpty (int ) ;
 int * Lst_Next (int ) ;
 scalar_t__ Lst_Open (int ) ;
 int OP_OPMASK ;
 int OP_TRANSFORM ;
 int OP_USE ;
 int OP_USEBEFORE ;
 scalar_t__ SUCCESS ;
 int TARG_NOCREATE ;
 TYPE_1__* Targ_FindNode (char*,int ) ;
 int VARF_WANTRES ;
 char* Var_Subst (int *,char*,TYPE_1__*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;

void
Make_HandleUse(GNode *cgn, GNode *pgn)
{
    LstNode ln;
    if ((cgn->type & (OP_USE|OP_USEBEFORE)) || Lst_IsEmpty(pgn->commands)) {
     if (cgn->type & OP_USEBEFORE) {




  Lst cmds = pgn->commands;
  pgn->commands = Lst_Duplicate(cgn->commands, ((void*)0));
  (void)Lst_Concat(pgn->commands, cmds, LST_CONCNEW);
  Lst_Destroy(cmds, ((void*)0));
     } else {




  (void)Lst_Concat(pgn->commands, cgn->commands, LST_CONCNEW);
     }
    }

    if (Lst_Open(cgn->children) == SUCCESS) {
 while ((ln = Lst_Next(cgn->children)) != ((void*)0)) {
     GNode *tgn, *gn = (GNode *)Lst_Datum(ln);







     if (gn->uname == ((void*)0)) {
  gn->uname = gn->name;
     } else {
  free(gn->name);
     }
     gn->name = Var_Subst(((void*)0), gn->uname, pgn, VARF_WANTRES);
     if (gn->name && gn->uname && strcmp(gn->name, gn->uname) != 0) {

  tgn = Targ_FindNode(gn->name, TARG_NOCREATE);
  if (tgn != ((void*)0))
      gn = tgn;
     }

     (void)Lst_AtEnd(pgn->children, gn);
     (void)Lst_AtEnd(gn->parents, pgn);
     pgn->unmade += 1;
 }
 Lst_Close(cgn->children);
    }

    pgn->type |= cgn->type & ~(OP_OPMASK|OP_USE|OP_USEBEFORE|OP_TRANSFORM);
}
