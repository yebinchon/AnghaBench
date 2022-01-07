
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int outPipe; int inPipe; } ;
typedef TYPE_1__ Job ;


 int JobDoOutput (TYPE_1__*,int ) ;
 int TRUE ;
 int clearfd (TYPE_1__*) ;
 int close (int) ;

__attribute__((used)) static void
JobClose(Job *job)
{
    clearfd(job);
    (void)close(job->outPipe);
    job->outPipe = -1;

    JobDoOutput(job, TRUE);
    (void)close(job->inPipe);
    job->inPipe = -1;
}
