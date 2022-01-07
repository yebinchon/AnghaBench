
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* comm; int tid; } ;
union perf_event {TYPE_1__ comm; } ;
typedef int FILE ;


 size_t fprintf (int *,char*,char*,int) ;

size_t perf_event__fprintf_comm(union perf_event *event, FILE *fp)
{
 return fprintf(fp, ": %s:%d\n", event->comm.comm, event->comm.tid);
}
