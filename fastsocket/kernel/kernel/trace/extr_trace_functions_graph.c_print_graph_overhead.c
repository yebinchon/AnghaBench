
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct trace_seq {int dummy; } ;


 int TRACE_GRAPH_PRINT_DURATION ;
 int TRACE_GRAPH_PRINT_OVERHEAD ;
 int trace_seq_printf (struct trace_seq*,char*) ;

__attribute__((used)) static int
print_graph_overhead(unsigned long long duration, struct trace_seq *s,
       u32 flags)
{

 if (!(flags & TRACE_GRAPH_PRINT_DURATION))
  return 1;


 if (duration == -1)
  return trace_seq_printf(s, "  ");

 if (flags & TRACE_GRAPH_PRINT_OVERHEAD) {

  if (duration > 100000ULL)
   return trace_seq_printf(s, "! ");


  if (duration > 10000ULL)
   return trace_seq_printf(s, "+ ");
 }

 return trace_seq_printf(s, "  ");
}
