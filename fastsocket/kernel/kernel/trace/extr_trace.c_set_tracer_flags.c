
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TRACE_ITER_RECORD_CMD ;
 int trace_event_enable_cmd_record (int) ;
 unsigned int trace_flags ;

__attribute__((used)) static void set_tracer_flags(unsigned int mask, int enabled)
{

 if (!!(trace_flags & mask) == !!enabled)
  return;

 if (enabled)
  trace_flags |= mask;
 else
  trace_flags &= ~mask;

 if (mask == TRACE_ITER_RECORD_CMD)
  trace_event_enable_cmd_record(enabled);
}
