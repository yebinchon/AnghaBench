
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_5__ {int type; char* name; void* mtime; int children; int commands; } ;
typedef TYPE_1__ GNode ;


 scalar_t__ DEBUG (int ) ;
 scalar_t__ Dir_MTime (TYPE_1__*,int) ;
 scalar_t__ Lst_IsEmpty (int ) ;
 int MAKE ;
 scalar_t__ NoExecute (TYPE_1__*) ;
 int OP_SAVE_CMDS ;
 int OP_WAIT ;
 char* Targ_FmtTime (void*) ;
 int debug_file ;
 int fprintf (int ,char*,char*,char*) ;
 void* now ;

time_t
Make_Recheck(GNode *gn)
{
    time_t mtime = Dir_MTime(gn, 1);
    if (!Lst_IsEmpty(gn->commands) || Lst_IsEmpty(gn->children)) {
 gn->mtime = now;
    }
    return mtime;
}
