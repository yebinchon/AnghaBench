
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ts; int cpu; int ent; struct trace_seq seq; } ;
struct kmemtrace_user_event_alloc {int node; int gfp_flags; int bytes_alloc; int bytes_req; } ;
struct kmemtrace_user_event {int event_size; unsigned long ptr; int call_site; int timestamp; int cpu; int type_id; int event_id; } ;
struct kmemtrace_alloc_entry {int node; int gfp_flags; int bytes_alloc; int bytes_req; scalar_t__ ptr; int call_site; int type_id; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int KMEMTRACE_USER_ALLOC ;
 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct kmemtrace_alloc_entry*,int ) ;
 void* trace_seq_reserve (struct trace_seq*,int) ;

__attribute__((used)) static enum print_line_t
kmemtrace_print_alloc_user(struct trace_iterator *iter, int flags)
{
 struct trace_seq *s = &iter->seq;
 struct kmemtrace_alloc_entry *entry;
 struct kmemtrace_user_event *ev;
 struct kmemtrace_user_event_alloc *ev_alloc;

 trace_assign_type(entry, iter->ent);

 ev = trace_seq_reserve(s, sizeof(*ev));
 if (!ev)
  return TRACE_TYPE_PARTIAL_LINE;

 ev->event_id = KMEMTRACE_USER_ALLOC;
 ev->type_id = entry->type_id;
 ev->event_size = sizeof(*ev) + sizeof(*ev_alloc);
 ev->cpu = iter->cpu;
 ev->timestamp = iter->ts;
 ev->call_site = entry->call_site;
 ev->ptr = (unsigned long)entry->ptr;

 ev_alloc = trace_seq_reserve(s, sizeof(*ev_alloc));
 if (!ev_alloc)
  return TRACE_TYPE_PARTIAL_LINE;

 ev_alloc->bytes_req = entry->bytes_req;
 ev_alloc->bytes_alloc = entry->bytes_alloc;
 ev_alloc->gfp_flags = entry->gfp_flags;
 ev_alloc->node = entry->node;

 return TRACE_TYPE_HANDLED;
}
