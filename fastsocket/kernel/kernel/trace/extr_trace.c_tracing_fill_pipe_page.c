
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; } ;
struct trace_iterator {int * ent; TYPE_1__ seq; } ;


 int TRACE_TYPE_NO_CONSUME ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int find_next_entry_inc (struct trace_iterator*) ;
 int print_trace_line (struct trace_iterator*) ;
 int trace_consume (struct trace_iterator*) ;

__attribute__((used)) static size_t
tracing_fill_pipe_page(size_t rem, struct trace_iterator *iter)
{
 size_t count;
 int ret;


 for (;;) {
  count = iter->seq.len;
  ret = print_trace_line(iter);
  count = iter->seq.len - count;
  if (rem < count) {
   rem = 0;
   iter->seq.len -= count;
   break;
  }
  if (ret == TRACE_TYPE_PARTIAL_LINE) {
   iter->seq.len -= count;
   break;
  }

  if (ret != TRACE_TYPE_NO_CONSUME)
   trace_consume(iter);
  rem -= count;
  if (!find_next_entry_inc(iter)) {
   rem = 0;
   iter->ent = ((void*)0);
   break;
  }
 }

 return rem;
}
