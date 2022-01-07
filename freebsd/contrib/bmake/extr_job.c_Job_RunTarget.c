
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ made; } ;
typedef TYPE_1__ GNode ;
typedef int Boolean ;


 int ALLSRC ;
 scalar_t__ ERROR ;
 int FALSE ;
 int JobRun (TYPE_1__*) ;
 int PrintOnError (TYPE_1__*,char*) ;
 int TARG_NOCREATE ;
 int TRUE ;
 TYPE_1__* Targ_FindNode (char const*,int ) ;
 int Var_Set (int ,char const*,TYPE_1__*,int ) ;
 int exit (int) ;

Boolean
Job_RunTarget(const char *target, const char *fname) {
    GNode *gn = Targ_FindNode(target, TARG_NOCREATE);

    if (gn == ((void*)0))
 return FALSE;

    if (fname)
 Var_Set(ALLSRC, fname, gn, 0);

    JobRun(gn);
    if (gn->made == ERROR) {
 PrintOnError(gn, "\n\nStop.");
 exit(1);
    }
    return TRUE;
}
