
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ts; int cpu; int ent; struct trace_seq seq; } ;
struct kmemtrace_user_event {int event_size; unsigned long ptr; int call_site; int timestamp; int cpu; int type_id; int event_id; } ;
struct kmemtrace_free_entry {scalar_t__ ptr; int call_site; int type_id; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int KMEMTRACE_USER_FREE ;
 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct kmemtrace_free_entry*,int ) ;
 struct kmemtrace_user_event* trace_seq_reserve (struct trace_seq*,int) ;

__attribute__((used)) static enum print_line_t
kmemtrace_print_free_user(struct trace_iterator *iter, int flags)
{
 struct trace_seq *s = &iter->seq;
 struct kmemtrace_free_entry *entry;
 struct kmemtrace_user_event *ev;

 trace_assign_type(entry, iter->ent);

 ev = trace_seq_reserve(s, sizeof(*ev));
 if (!ev)
  return TRACE_TYPE_PARTIAL_LINE;

 ev->event_id = KMEMTRACE_USER_FREE;
 ev->type_id = entry->type_id;
 ev->event_size = sizeof(*ev);
 ev->cpu = iter->cpu;
 ev->timestamp = iter->ts;
 ev->call_site = entry->call_site;
 ev->ptr = (unsigned long)entry->ptr;

 return TRACE_TYPE_HANDLED;
}
