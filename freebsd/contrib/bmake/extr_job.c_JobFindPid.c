
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int job_state; int pid; } ;
typedef TYPE_1__ Job ;
typedef scalar_t__ Boolean ;


 scalar_t__ DEBUG (int ) ;
 int JOB ;
 TYPE_1__* job_table ;
 int job_table_dump (char*) ;
 TYPE_1__* job_table_end ;

__attribute__((used)) static Job *
JobFindPid(int pid, int status, Boolean isJobs)
{
    Job *job;

    for (job = job_table; job < job_table_end; job++) {
 if ((job->job_state == status) && job->pid == pid)
     return job;
    }
    if (DEBUG(JOB) && isJobs)
 job_table_dump("no pid");
    return ((void*)0);
}
