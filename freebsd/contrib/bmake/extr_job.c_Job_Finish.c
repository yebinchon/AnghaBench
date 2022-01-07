
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int children; int commands; } ;


 int Error (char*) ;
 int JobRun (TYPE_1__*) ;
 int Lst_IsEmpty (int ) ;
 int errors ;
 TYPE_1__* postCommands ;

int
Job_Finish(void)
{
    if (postCommands != ((void*)0) &&
 (!Lst_IsEmpty(postCommands->commands) ||
  !Lst_IsEmpty(postCommands->children))) {
 if (errors) {
     Error("Errors reported so .END ignored");
 } else {
     JobRun(postCommands);
 }
    }
    return(errors);
}
