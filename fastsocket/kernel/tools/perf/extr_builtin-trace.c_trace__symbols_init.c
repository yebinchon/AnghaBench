
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int target; } ;
struct trace {int host; TYPE_1__ opts; } ;
struct perf_evlist {int threads; } ;


 int HOST_KERNEL_ID ;
 int machine__create_kernel_maps (int *) ;
 int machine__init (int *,char*,int ) ;
 int perf_event__synthesize_thread_map (int *,int ,int ,int *) ;
 int perf_event__synthesize_threads (int *,int ,int *) ;
 scalar_t__ perf_target__has_task (int *) ;
 int symbol__exit () ;
 int symbol__init () ;
 int trace__tool_process ;

__attribute__((used)) static int trace__symbols_init(struct trace *trace, struct perf_evlist *evlist)
{
 int err = symbol__init();

 if (err)
  return err;

 machine__init(&trace->host, "", HOST_KERNEL_ID);
 machine__create_kernel_maps(&trace->host);

 if (perf_target__has_task(&trace->opts.target)) {
  err = perf_event__synthesize_thread_map(((void*)0), evlist->threads,
       trace__tool_process,
       &trace->host);
 } else {
  err = perf_event__synthesize_threads(((void*)0), trace__tool_process,
           &trace->host);
 }

 if (err)
  symbol__exit();

 return err;
}
