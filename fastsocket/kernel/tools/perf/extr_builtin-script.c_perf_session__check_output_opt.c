
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_session {int dummy; } ;
struct perf_evsel {int dummy; } ;
struct TYPE_2__ {scalar_t__ fields; int wildcard_set; scalar_t__ user_set; } ;


 int PERF_TYPE_MAX ;
 int event_type (int) ;
 TYPE_1__* output ;
 scalar_t__ perf_evsel__check_attr (struct perf_evsel*,struct perf_session*) ;
 struct perf_evsel* perf_session__find_first_evtype (struct perf_session*,int) ;
 int pr_err (char*,int ) ;

__attribute__((used)) static int perf_session__check_output_opt(struct perf_session *session)
{
 int j;
 struct perf_evsel *evsel;

 for (j = 0; j < PERF_TYPE_MAX; ++j) {
  evsel = perf_session__find_first_evtype(session, j);





  if (!evsel && output[j].user_set && !output[j].wildcard_set) {
   pr_err("%s events do not exist. "
          "Remove corresponding -f option to proceed.\n",
          event_type(j));
   return -1;
  }

  if (evsel && output[j].fields &&
   perf_evsel__check_attr(evsel, session))
   return -1;
 }

 return 0;
}
