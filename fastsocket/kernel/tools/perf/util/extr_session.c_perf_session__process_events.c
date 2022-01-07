
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_tool {int dummy; } ;
struct TYPE_2__ {int data_size; int data_offset; } ;
struct perf_session {int size; TYPE_1__ header; int fd_pipe; } ;


 int ENOMEM ;
 int __perf_session__process_events (struct perf_session*,int ,int ,int ,struct perf_tool*) ;
 int __perf_session__process_pipe_events (struct perf_session*,struct perf_tool*) ;
 int * perf_session__register_idle_thread (struct perf_session*) ;

int perf_session__process_events(struct perf_session *self,
     struct perf_tool *tool)
{
 int err;

 if (perf_session__register_idle_thread(self) == ((void*)0))
  return -ENOMEM;

 if (!self->fd_pipe)
  err = __perf_session__process_events(self,
           self->header.data_offset,
           self->header.data_size,
           self->size, tool);
 else
  err = __perf_session__process_pipe_events(self, tool);

 return err;
}
