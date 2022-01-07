
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int args ;
struct TYPE_5__ {char* exit; char* echo; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ Job ;


 int JOB_IGNERR ;
 int JOB_SILENT ;
 char* UNCONST (char*) ;
 TYPE_2__* commandShell ;
 char* shellName ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static void
JobMakeArgv(Job *job, char **argv)
{
    int argc;
    static char args[10];

    argv[0] = UNCONST(shellName);
    argc = 1;

    if ((commandShell->exit && (*commandShell->exit != '-')) ||
 (commandShell->echo && (*commandShell->echo != '-')))
    {






 (void)snprintf(args, sizeof(args), "-%s%s",
        ((job->flags & JOB_IGNERR) ? "" :
         (commandShell->exit ? commandShell->exit : "")),
        ((job->flags & JOB_SILENT) ? "" :
         (commandShell->echo ? commandShell->echo : "")));

 if (args[1]) {
     argv[argc] = args;
     argc++;
 }
    } else {
 if (!(job->flags & JOB_IGNERR) && commandShell->exit) {
     argv[argc] = UNCONST(commandShell->exit);
     argc++;
 }
 if (!(job->flags & JOB_SILENT) && commandShell->echo) {
     argv[argc] = UNCONST(commandShell->echo);
     argc++;
 }
    }
    argv[argc] = ((void*)0);
}
