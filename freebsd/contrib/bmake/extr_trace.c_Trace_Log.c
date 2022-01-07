
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
typedef size_t TrEvent ;
struct TYPE_5__ {int pid; int flags; TYPE_1__* node; } ;
struct TYPE_4__ {char* name; int type; } ;
typedef TYPE_2__ Job ;


 int * evname ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 int gettimeofday (struct timeval*,int *) ;
 int jobTokensRunning ;
 int * trfile ;
 int trpid ;
 int trwd ;

void
Trace_Log(TrEvent event, Job *job)
{
 struct timeval rightnow;

 if (trfile == ((void*)0))
  return;

 gettimeofday(&rightnow, ((void*)0));

 fprintf(trfile, "%lld.%06ld %d %s %d %s",
     (long long)rightnow.tv_sec, (long)rightnow.tv_usec,
     jobTokensRunning,
     evname[event], trpid, trwd);
 if (job != ((void*)0)) {
  fprintf(trfile, " %s %d %x %x", job->node->name,
      job->pid, job->flags, job->node->type);
 }
 fputc('\n', trfile);
 fflush(trfile);
}
