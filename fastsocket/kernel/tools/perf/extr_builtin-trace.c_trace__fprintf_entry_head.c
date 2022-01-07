
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct trace {scalar_t__ multiple_threads; } ;
struct thread {int pid; } ;
typedef int FILE ;


 scalar_t__ fprintf (int *,char*,int) ;
 scalar_t__ fprintf_duration (int ,int *) ;
 size_t trace__fprintf_tstamp (struct trace*,int ,int *) ;

__attribute__((used)) static size_t trace__fprintf_entry_head(struct trace *trace, struct thread *thread,
     u64 duration, u64 tstamp, FILE *fp)
{
 size_t printed = trace__fprintf_tstamp(trace, tstamp, fp);
 printed += fprintf_duration(duration, fp);

 if (trace->multiple_threads)
  printed += fprintf(fp, "%d ", thread->pid);

 return printed;
}
