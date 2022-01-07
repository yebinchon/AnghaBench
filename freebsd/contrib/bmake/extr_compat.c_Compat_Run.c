
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ made; char* name; int type; } ;
typedef int Lst ;
typedef TYPE_1__ GNode ;


 scalar_t__ ABORTED ;
 scalar_t__ CompatInterrupt ;
 int Compat_Make (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* ENDNode ;
 scalar_t__ ERROR ;
 scalar_t__ Lst_DeQueue (int ) ;
 int Lst_IsEmpty (int ) ;
 int Make_ExpandUse (int ) ;
 int OP_SPECIAL ;
 int PrintOnError (TYPE_1__*,char*) ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 int SIGTERM ;
 scalar_t__ SIG_IGN ;
 int Shell_Init () ;
 int TARG_CREATE ;
 int TARG_NOCREATE ;
 TYPE_1__* Targ_FindNode (char*,int ) ;
 scalar_t__ UPTODATE ;
 scalar_t__ bmake_signal (int ,scalar_t__) ;
 int exit (int) ;
 int printf (char*,char*) ;
 int queryFlag ;
 int shellName ;

void
Compat_Run(Lst targs)
{
    GNode *gn = ((void*)0);
    int errors;

    if (!shellName)
 Shell_Init();

    if (bmake_signal(SIGINT, SIG_IGN) != SIG_IGN) {
 bmake_signal(SIGINT, CompatInterrupt);
    }
    if (bmake_signal(SIGTERM, SIG_IGN) != SIG_IGN) {
 bmake_signal(SIGTERM, CompatInterrupt);
    }
    if (bmake_signal(SIGHUP, SIG_IGN) != SIG_IGN) {
 bmake_signal(SIGHUP, CompatInterrupt);
    }
    if (bmake_signal(SIGQUIT, SIG_IGN) != SIG_IGN) {
 bmake_signal(SIGQUIT, CompatInterrupt);
    }

    ENDNode = Targ_FindNode(".END", TARG_CREATE);
    ENDNode->type = OP_SPECIAL;




    if (!queryFlag) {
 gn = Targ_FindNode(".BEGIN", TARG_NOCREATE);
 if (gn != ((void*)0)) {
     Compat_Make(gn, gn);
            if (gn->made == ERROR) {
                PrintOnError(gn, "\nStop.");
                exit(1);
            }
 }
    }





    Make_ExpandUse(targs);
    errors = 0;
    while (!Lst_IsEmpty (targs)) {
 gn = (GNode *)Lst_DeQueue(targs);
 Compat_Make(gn, gn);

 if (gn->made == UPTODATE) {
     printf("`%s' is up to date.\n", gn->name);
 } else if (gn->made == ABORTED) {
     printf("`%s' not remade because of errors.\n", gn->name);
     errors += 1;
 }
    }




    if (errors == 0) {
 Compat_Make(ENDNode, ENDNode);
 if (gn->made == ERROR) {
     PrintOnError(gn, "\nStop.");
     exit(1);
 }
    }
}
