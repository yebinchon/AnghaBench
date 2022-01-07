
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int dummy; } ;
struct perf_evsel_str_handler {char* member_0; int member_1; } ;


 int EINVAL ;
 int ENOMEM ;
 int O_RDONLY ;
 int input_name ;
 int perf_evsel__process_alloc_event ;
 int perf_evsel__process_alloc_node_event ;
 int perf_evsel__process_free_event ;
 int perf_kmem ;
 scalar_t__ perf_session__create_kernel_maps (struct perf_session*) ;
 int perf_session__delete (struct perf_session*) ;
 int perf_session__has_traces (struct perf_session*,char*) ;
 struct perf_session* perf_session__new (int ,int ,int ,int,int *) ;
 int perf_session__process_events (struct perf_session*,int *) ;
 scalar_t__ perf_session__set_tracepoints_handlers (struct perf_session*,struct perf_evsel_str_handler const*) ;
 int pr_err (char*) ;
 int print_result (struct perf_session*) ;
 int setup_pager () ;
 int sort_result () ;

__attribute__((used)) static int __cmd_kmem(void)
{
 int err = -EINVAL;
 struct perf_session *session;
 const struct perf_evsel_str_handler kmem_tracepoints[] = {
  { "kmem:kmalloc", perf_evsel__process_alloc_event, },
      { "kmem:kmem_cache_alloc", perf_evsel__process_alloc_event, },
  { "kmem:kmalloc_node", perf_evsel__process_alloc_node_event, },
      { "kmem:kmem_cache_alloc_node", perf_evsel__process_alloc_node_event, },
  { "kmem:kfree", perf_evsel__process_free_event, },
      { "kmem:kmem_cache_free", perf_evsel__process_free_event, },
 };

 session = perf_session__new(input_name, O_RDONLY, 0, 0, &perf_kmem);
 if (session == ((void*)0))
  return -ENOMEM;

 if (perf_session__create_kernel_maps(session) < 0)
  goto out_delete;

 if (!perf_session__has_traces(session, "kmem record"))
  goto out_delete;

 if (perf_session__set_tracepoints_handlers(session, kmem_tracepoints)) {
  pr_err("Initializing perf session tracepoint handlers failed\n");
  return -1;
 }

 setup_pager();
 err = perf_session__process_events(session, &perf_kmem);
 if (err != 0)
  goto out_delete;
 sort_result();
 print_result(session);
out_delete:
 perf_session__delete(session);
 return err;
}
