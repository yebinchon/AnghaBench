
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace {int duration_filter; int host; } ;
struct thread_trace {char* entry_str; int entry_pending; int entry_time; } ;
struct thread {struct thread_trace* priv; } ;
struct syscall {int name; } ;
struct perf_sample {int time; int tid; } ;
struct perf_evsel {int dummy; } ;


 struct thread* machine__findnew_thread (int *,int ) ;
 char* malloc (int) ;
 void* perf_evsel__rawptr (struct perf_evsel*,struct perf_sample*,char*) ;
 int printf (char*,...) ;
 scalar_t__ scnprintf (char*,int,char*,int ) ;
 int stdout ;
 int strcmp (int ,char*) ;
 scalar_t__ syscall__scnprintf_args (struct syscall*,char*,int,void*) ;
 struct thread_trace* thread__trace (struct thread*) ;
 int trace__fprintf_entry_head (struct trace*,struct thread*,int,int ,int ) ;
 struct syscall* trace__syscall_info (struct trace*,struct perf_evsel*,struct perf_sample*) ;

__attribute__((used)) static int trace__sys_enter(struct trace *trace, struct perf_evsel *evsel,
       struct perf_sample *sample)
{
 char *msg;
 void *args;
 size_t printed = 0;
 struct thread *thread = machine__findnew_thread(&trace->host, sample->tid);
 struct syscall *sc = trace__syscall_info(trace, evsel, sample);
 struct thread_trace *ttrace = thread__trace(thread);

 if (ttrace == ((void*)0) || sc == ((void*)0))
  return -1;

 args = perf_evsel__rawptr(evsel, sample, "args");
 if (args == ((void*)0)) {
  printf("Problems reading syscall arguments\n");
  return -1;
 }

 ttrace = thread->priv;

 if (ttrace->entry_str == ((void*)0)) {
  ttrace->entry_str = malloc(1024);
  if (!ttrace->entry_str)
   return -1;
 }

 ttrace->entry_time = sample->time;
 msg = ttrace->entry_str;
 printed += scnprintf(msg + printed, 1024 - printed, "%s(", sc->name);

 printed += syscall__scnprintf_args(sc, msg + printed, 1024 - printed, args);

 if (!strcmp(sc->name, "exit_group") || !strcmp(sc->name, "exit")) {
  if (!trace->duration_filter) {
   trace__fprintf_entry_head(trace, thread, 1, sample->time, stdout);
   printf("%-70s\n", ttrace->entry_str);
  }
 } else
  ttrace->entry_pending = 1;

 return 0;
}
