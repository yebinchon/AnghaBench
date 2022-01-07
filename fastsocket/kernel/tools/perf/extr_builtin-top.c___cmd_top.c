
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct sched_param {scalar_t__ sched_priority; } ;
struct perf_top {scalar_t__ samples; TYPE_2__* session; TYPE_1__* evlist; scalar_t__ realtime_prio; int tool; int target; } ;
typedef int pthread_t ;
struct TYPE_6__ {TYPE_1__* evlist; int host_machine; } ;
struct TYPE_5__ {int nr_fds; int pollfd; int threads; } ;


 int ENOMEM ;
 int O_WRONLY ;
 int SCHED_FIFO ;
 int display_thread ;
 int display_thread_tui ;
 int exit (int) ;
 int perf_event__process ;
 int perf_event__synthesize_thread_map (int *,int ,int ,int *) ;
 int perf_event__synthesize_threads (int *,int ,int *) ;
 int perf_session__delete (TYPE_2__*) ;
 TYPE_2__* perf_session__new (int *,int ,int,int,int *) ;
 int perf_session__set_id_hdr_size (TYPE_2__*) ;
 scalar_t__ perf_target__has_task (int *) ;
 int perf_top__mmap_read (struct perf_top*) ;
 int perf_top__setup_sample_type (struct perf_top*) ;
 int perf_top__start_counters (struct perf_top*) ;
 int poll (int ,int ,int) ;
 scalar_t__ pthread_create (int *,int *,int ,struct perf_top*) ;
 scalar_t__ sched_setscheduler (int ,int ,struct sched_param*) ;
 int ui__error (char*) ;
 scalar_t__ use_browser ;

__attribute__((used)) static int __cmd_top(struct perf_top *top)
{
 pthread_t thread;
 int ret;




 top->session = perf_session__new(((void*)0), O_WRONLY, 0, 0, ((void*)0));
 if (top->session == ((void*)0))
  return -ENOMEM;

 ret = perf_top__setup_sample_type(top);
 if (ret)
  goto out_delete;

 if (perf_target__has_task(&top->target))
  perf_event__synthesize_thread_map(&top->tool, top->evlist->threads,
        perf_event__process,
        &top->session->host_machine);
 else
  perf_event__synthesize_threads(&top->tool, perf_event__process,
            &top->session->host_machine);
 perf_top__start_counters(top);
 top->session->evlist = top->evlist;
 perf_session__set_id_hdr_size(top->session);


 poll(top->evlist->pollfd, top->evlist->nr_fds, 100);

 perf_top__mmap_read(top);

 if (pthread_create(&thread, ((void*)0), (use_browser > 0 ? display_thread_tui :
           display_thread), top)) {
  ui__error("Could not create display thread.\n");
  exit(-1);
 }

 if (top->realtime_prio) {
  struct sched_param param;

  param.sched_priority = top->realtime_prio;
  if (sched_setscheduler(0, SCHED_FIFO, &param)) {
   ui__error("Could not set realtime priority.\n");
   exit(-1);
  }
 }

 while (1) {
  u64 hits = top->samples;

  perf_top__mmap_read(top);

  if (hits == top->samples)
   ret = poll(top->evlist->pollfd, top->evlist->nr_fds, 100);
 }

out_delete:
 perf_session__delete(top->session);
 top->session = ((void*)0);

 return 0;
}
