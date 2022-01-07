
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ftrace_event_call {int flags; } ;


 int TRACE_EVENT_FL_KABI_PRINT_FMT ;

__attribute__((used)) static bool is_print_fmt_event(struct ftrace_event_call *call)
{
 return call->flags & TRACE_EVENT_FL_KABI_PRINT_FMT;
}
