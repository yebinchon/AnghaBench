
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* exit; char* echo; scalar_t__ hasErrCtl; } ;


 int STR_ADDSLASH ;
 int _PATH_DEFSHELLDIR ;
 int * bmake_malloc (int) ;
 TYPE_1__* commandShell ;
 int free (int *) ;
 int * shellErrFlag ;
 char* shellName ;
 char* shellPath ;
 int snprintf (int *,int,char*,char*) ;
 char* str_concat (int ,char*,int ) ;
 scalar_t__ strcmp (char*,int *) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

void
Shell_Init(void)
{
    if (shellPath == ((void*)0)) {




 shellName = commandShell->name;







 shellPath = str_concat(_PATH_DEFSHELLDIR, shellName, STR_ADDSLASH);
    }
    if (commandShell->exit == ((void*)0)) {
 commandShell->exit = "";
    }
    if (commandShell->echo == ((void*)0)) {
 commandShell->echo = "";
    }
    if (commandShell->hasErrCtl && *commandShell->exit) {
 if (shellErrFlag &&
     strcmp(commandShell->exit, &shellErrFlag[1]) != 0) {
     free(shellErrFlag);
     shellErrFlag = ((void*)0);
 }
 if (!shellErrFlag) {
     int n = strlen(commandShell->exit) + 2;

     shellErrFlag = bmake_malloc(n);
     if (shellErrFlag) {
  snprintf(shellErrFlag, n, "-%s", commandShell->exit);
     }
 }
    } else if (shellErrFlag) {
 free(shellErrFlag);
 shellErrFlag = ((void*)0);
    }
}
