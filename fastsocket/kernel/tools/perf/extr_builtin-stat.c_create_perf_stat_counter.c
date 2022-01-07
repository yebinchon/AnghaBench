
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event_attr {int read_format; int inherit; int disabled; int enable_on_exec; scalar_t__ exclude_host; scalar_t__ exclude_guest; } ;
struct perf_evsel {struct perf_event_attr attr; } ;
struct TYPE_2__ {int threads; } ;


 scalar_t__ EINVAL ;
 int PERF_FORMAT_TOTAL_TIME_ENABLED ;
 int PERF_FORMAT_TOTAL_TIME_RUNNING ;
 scalar_t__ errno ;
 TYPE_1__* evsel_list ;
 int no_inherit ;
 int perf_evsel__cpus (struct perf_evsel*) ;
 int perf_evsel__is_group_member (struct perf_evsel*) ;
 int perf_evsel__open_per_cpu (struct perf_evsel*,int ) ;
 int perf_evsel__open_per_thread (struct perf_evsel*,int ) ;
 scalar_t__ perf_target__has_cpu (int *) ;
 int perf_target__has_task (int *) ;
 int pr_debug (char*) ;
 scalar_t__ scale ;
 int target ;

__attribute__((used)) static int create_perf_stat_counter(struct perf_evsel *evsel)
{
 struct perf_event_attr *attr = &evsel->attr;
 bool exclude_guest_missing = 0;
 int ret;

 if (scale)
  attr->read_format = PERF_FORMAT_TOTAL_TIME_ENABLED |
        PERF_FORMAT_TOTAL_TIME_RUNNING;

 attr->inherit = !no_inherit;

retry:
 if (exclude_guest_missing)
  evsel->attr.exclude_guest = evsel->attr.exclude_host = 0;

 if (perf_target__has_cpu(&target)) {
  ret = perf_evsel__open_per_cpu(evsel, perf_evsel__cpus(evsel));
  if (ret)
   goto check_ret;
  return 0;
 }

 if (!perf_target__has_task(&target) &&
     !perf_evsel__is_group_member(evsel)) {
  attr->disabled = 1;
  attr->enable_on_exec = 1;
 }

 ret = perf_evsel__open_per_thread(evsel, evsel_list->threads);
 if (!ret)
  return 0;

check_ret:
 if (ret && errno == EINVAL) {
  if (!exclude_guest_missing &&
      (evsel->attr.exclude_guest || evsel->attr.exclude_host)) {
   pr_debug("Old kernel, cannot exclude "
     "guest or host samples.\n");
   exclude_guest_missing = 1;
   goto retry;
  }
 }
 return ret;
}
