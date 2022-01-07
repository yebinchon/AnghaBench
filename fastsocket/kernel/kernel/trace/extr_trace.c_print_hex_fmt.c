
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ts; int cpu; struct trace_entry* ent; struct trace_seq seq; } ;
struct trace_event {int (* hex ) (struct trace_iterator*,int ) ;} ;
struct trace_entry {int type; int pid; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int SEQ_PUT_FIELD_RET (struct trace_seq*,unsigned char) ;
 int SEQ_PUT_HEX_FIELD_RET (struct trace_seq*,int ) ;
 int TRACE_ITER_CONTEXT_INFO ;
 int TRACE_TYPE_HANDLED ;
 struct trace_event* ftrace_find_event (int ) ;
 int stub1 (struct trace_iterator*,int ) ;
 int trace_flags ;

__attribute__((used)) static enum print_line_t print_hex_fmt(struct trace_iterator *iter)
{
 struct trace_seq *s = &iter->seq;
 unsigned char newline = '\n';
 struct trace_entry *entry;
 struct trace_event *event;

 entry = iter->ent;

 if (trace_flags & TRACE_ITER_CONTEXT_INFO) {
  SEQ_PUT_HEX_FIELD_RET(s, entry->pid);
  SEQ_PUT_HEX_FIELD_RET(s, iter->cpu);
  SEQ_PUT_HEX_FIELD_RET(s, iter->ts);
 }

 event = ftrace_find_event(entry->type);
 if (event) {
  enum print_line_t ret = event->hex(iter, 0);
  if (ret != TRACE_TYPE_HANDLED)
   return ret;
 }

 SEQ_PUT_FIELD_RET(s, newline);

 return TRACE_TYPE_HANDLED;
}
