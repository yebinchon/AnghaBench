
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int jobarg ;
struct TYPE_3__ {int inPipe; int outPipe; } ;


 int FD_CLOEXEC ;
 int F_SETFD ;
 int JobCreatePipe (TYPE_1__*,int) ;
 int JobTokenAdd () ;
 int MAKEFLAGS ;
 int VAR_GLOBAL ;
 int Var_Append (int ,char*,int ) ;
 int fcntl (int,int ,int ) ;
 int snprintf (char*,int,char*,int,int) ;
 TYPE_1__ tokenWaitJob ;

void
Job_ServerStart(int max_tokens, int jp_0, int jp_1)
{
    int i;
    char jobarg[64];

    if (jp_0 >= 0 && jp_1 >= 0) {

 tokenWaitJob.inPipe = jp_0;
 tokenWaitJob.outPipe = jp_1;
 (void)fcntl(jp_0, F_SETFD, FD_CLOEXEC);
 (void)fcntl(jp_1, F_SETFD, FD_CLOEXEC);
 return;
    }

    JobCreatePipe(&tokenWaitJob, 15);

    snprintf(jobarg, sizeof(jobarg), "%d,%d",
     tokenWaitJob.inPipe, tokenWaitJob.outPipe);

    Var_Append(MAKEFLAGS, "-J", VAR_GLOBAL);
    Var_Append(MAKEFLAGS, jobarg, VAR_GLOBAL);
    for (i = 1; i < max_tokens; i++)
 JobTokenAdd();
}
