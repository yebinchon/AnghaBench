
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int trace; } ;
struct TYPE_4__ {int print_fmt; } ;
struct ftrace_event_call {TYPE_1__ fmt; int name; struct trace_probe* data; int profile_disable; int profile_enable; int profile_count; int unregfunc; int regfunc; scalar_t__ enabled; int id; int flags; TYPE_2__* event; int define_fields; void* raw_init; } ;
struct trace_probe {TYPE_2__ event; struct ftrace_event_call call; } ;


 int ENODEV ;
 int ENOMEM ;
 int TRACE_EVENT_FL_KABI_PRINT_FMT ;
 int atomic_set (int *,int) ;
 int kfree (int ) ;
 int kprobe_event_define_fields ;
 int kretprobe_event_define_fields ;
 int pr_info (char*,int ) ;
 int print_kprobe_event ;
 int print_kretprobe_event ;
 int probe_event_disable ;
 int probe_event_enable ;
 void* probe_event_raw_init ;
 int probe_profile_disable ;
 int probe_profile_enable ;
 int register_ftrace_event (TYPE_2__*) ;
 scalar_t__ set_print_fmt (struct trace_probe*) ;
 int trace_add_event_call (struct ftrace_event_call*) ;
 scalar_t__ trace_probe_is_return (struct trace_probe*) ;
 int unregister_ftrace_event (TYPE_2__*) ;

__attribute__((used)) static int register_probe_event(struct trace_probe *tp)
{
 struct ftrace_event_call *call = &tp->call;
 int ret;


 if (trace_probe_is_return(tp)) {
  tp->event.trace = print_kretprobe_event;
  call->raw_init = probe_event_raw_init;
  call->define_fields = kretprobe_event_define_fields;
 } else {
  tp->event.trace = print_kprobe_event;
  call->raw_init = probe_event_raw_init;
  call->define_fields = kprobe_event_define_fields;
 }
 if (set_print_fmt(tp) < 0)
  return -ENOMEM;
 call->event = &tp->event;
 call->id = register_ftrace_event(&tp->event);
 call->flags = TRACE_EVENT_FL_KABI_PRINT_FMT;
 if (!call->id) {
  kfree(call->fmt.print_fmt);
  return -ENODEV;
 }
 call->enabled = 0;
 call->regfunc = probe_event_enable;
 call->unregfunc = probe_event_disable;






 call->data = tp;
 ret = trace_add_event_call(call);
 if (ret) {
  pr_info("Failed to register kprobe event: %s\n", call->name);
  kfree(call->fmt.print_fmt);
  unregister_ftrace_event(&tp->event);
 }
 return ret;
}
