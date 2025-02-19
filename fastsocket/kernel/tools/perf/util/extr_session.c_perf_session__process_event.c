
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; } ;
union perf_event {TYPE_2__ header; } ;
typedef int u64 ;
struct perf_tool {scalar_t__ ordered_samples; } ;
struct TYPE_3__ {scalar_t__ needs_swap; } ;
struct perf_session {int evlist; int hists; TYPE_1__ header; } ;
struct perf_sample {int dummy; } ;


 int EINVAL ;
 int ETIME ;
 scalar_t__ PERF_RECORD_HEADER_MAX ;
 scalar_t__ PERF_RECORD_USER_TYPE_START ;
 int event_swap (union perf_event*,int ) ;
 int hists__inc_nr_events (int *,scalar_t__) ;
 int perf_evlist__parse_sample (int ,union perf_event*,struct perf_sample*) ;
 int perf_evlist__sample_id_all (int ) ;
 scalar_t__ perf_session__preprocess_sample (struct perf_session*,union perf_event*,struct perf_sample*) ;
 int perf_session__process_user_event (struct perf_session*,union perf_event*,struct perf_tool*,int ) ;
 int perf_session_deliver_event (struct perf_session*,union perf_event*,struct perf_sample*,struct perf_tool*,int ) ;
 int perf_session_queue_event (struct perf_session*,union perf_event*,struct perf_sample*,int ) ;

__attribute__((used)) static int perf_session__process_event(struct perf_session *session,
           union perf_event *event,
           struct perf_tool *tool,
           u64 file_offset)
{
 struct perf_sample sample;
 int ret;

 if (session->header.needs_swap)
  event_swap(event, perf_evlist__sample_id_all(session->evlist));

 if (event->header.type >= PERF_RECORD_HEADER_MAX)
  return -EINVAL;

 hists__inc_nr_events(&session->hists, event->header.type);

 if (event->header.type >= PERF_RECORD_USER_TYPE_START)
  return perf_session__process_user_event(session, event, tool, file_offset);




 ret = perf_evlist__parse_sample(session->evlist, event, &sample);
 if (ret)
  return ret;


 if (perf_session__preprocess_sample(session, event, &sample))
  return 0;

 if (tool->ordered_samples) {
  ret = perf_session_queue_event(session, event, &sample,
            file_offset);
  if (ret != -ETIME)
   return ret;
 }

 return perf_session_deliver_event(session, event, &sample, tool,
       file_offset);
}
