
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ header; } ;
typedef int u64 ;
struct perf_tool {int (* attr ) (struct perf_tool*,union perf_event*,int *) ;int (* event_type ) (struct perf_tool*,union perf_event*) ;int (* tracing_data ) (struct perf_tool*,union perf_event*,struct perf_session*) ;int (* build_id ) (struct perf_tool*,union perf_event*,struct perf_session*) ;int (* finished_round ) (struct perf_tool*,union perf_event*,struct perf_session*) ;} ;
struct perf_session {int fd; int evlist; } ;


 int EINVAL ;





 int SEEK_SET ;
 int dump_event (struct perf_session*,union perf_event*,int ,int *) ;
 int lseek (int ,int ,int ) ;
 int perf_session__set_id_hdr_size (struct perf_session*) ;
 int stub1 (struct perf_tool*,union perf_event*,int *) ;
 int stub2 (struct perf_tool*,union perf_event*) ;
 int stub3 (struct perf_tool*,union perf_event*,struct perf_session*) ;
 int stub4 (struct perf_tool*,union perf_event*,struct perf_session*) ;
 int stub5 (struct perf_tool*,union perf_event*,struct perf_session*) ;

__attribute__((used)) static int perf_session__process_user_event(struct perf_session *session, union perf_event *event,
         struct perf_tool *tool, u64 file_offset)
{
 int err;

 dump_event(session, event, file_offset, ((void*)0));


 switch (event->header.type) {
 case 131:
  err = tool->attr(tool, event, &session->evlist);
  if (err == 0)
   perf_session__set_id_hdr_size(session);
  return err;
 case 129:
  return tool->event_type(tool, event);
 case 128:

  lseek(session->fd, file_offset, SEEK_SET);
  return tool->tracing_data(tool, event, session);
 case 130:
  return tool->build_id(tool, event, session);
 case 132:
  return tool->finished_round(tool, event, session);
 default:
  return -EINVAL;
 }
}
