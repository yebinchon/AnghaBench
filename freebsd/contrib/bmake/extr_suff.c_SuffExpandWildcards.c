
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int parents; int children; int unmade; int name; } ;
typedef int LstNode ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 scalar_t__ DEBUG (int ) ;
 int Dir_Expand (int ,int ,int ) ;
 int Dir_HasWildcards (int ) ;
 int FALSE ;
 int Lst_AtEnd (int ,TYPE_1__*) ;
 scalar_t__ Lst_Datum (int ) ;
 scalar_t__ Lst_DeQueue (int ) ;
 int Lst_Destroy (int ,int *) ;
 int Lst_Init (int ) ;
 int Lst_InsertBefore (int ,int ,TYPE_1__*) ;
 int Lst_IsEmpty (int ) ;
 int Lst_Member (int ,TYPE_1__*) ;
 int Lst_Remove (int ,int ) ;
 int SUFF ;
 int Suff_FindPath (TYPE_1__*) ;
 int TARG_CREATE ;
 TYPE_1__* Targ_FindNode (char*,int ) ;
 int debug_file ;
 int fprintf (int ,char*,...) ;

__attribute__((used)) static void
SuffExpandWildcards(LstNode cln, GNode *pgn)
{
    GNode *cgn = (GNode *)Lst_Datum(cln);
    GNode *gn;
    char *cp;
    Lst explist;

    if (!Dir_HasWildcards(cgn->name))
 return;




    explist = Lst_Init(FALSE);
    Dir_Expand(cgn->name, Suff_FindPath(cgn), explist);

    while (!Lst_IsEmpty(explist)) {



 cp = (char *)Lst_DeQueue(explist);

 if (DEBUG(SUFF)) {
     fprintf(debug_file, "%s...", cp);
 }
 gn = Targ_FindNode(cp, TARG_CREATE);


 (void)Lst_InsertBefore(pgn->children, cln, gn);
 (void)Lst_AtEnd(gn->parents, pgn);
 pgn->unmade++;
    }




    Lst_Destroy(explist, ((void*)0));

    if (DEBUG(SUFF)) {
 fprintf(debug_file, "\n");
    }





    pgn->unmade--;
    Lst_Remove(pgn->children, cln);
    Lst_Remove(cgn->parents, Lst_Member(cgn->parents, pgn));
}
