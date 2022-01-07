
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* JOB_TOKENS ;
 int JobTokenAdd () ;
 int Punt (char*) ;
 size_t aborting ;
 scalar_t__ jobTokensRunning ;

void
Job_TokenReturn(void)
{
    jobTokensRunning--;
    if (jobTokensRunning < 0)
 Punt("token botch");
    if (jobTokensRunning || JOB_TOKENS[aborting] != '+')
 JobTokenAdd();
}
