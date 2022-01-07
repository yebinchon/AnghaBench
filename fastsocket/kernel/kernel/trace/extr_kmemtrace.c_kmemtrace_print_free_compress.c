
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct kmemtrace_free_entry {int type_id; scalar_t__ call_site; scalar_t__ ptr; } ;
typedef void* ptrdiff_t ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;





 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct kmemtrace_free_entry*,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,...) ;

__attribute__((used)) static enum print_line_t
kmemtrace_print_free_compress(struct trace_iterator *iter)
{
 struct kmemtrace_free_entry *entry;
 struct trace_seq *s = &iter->seq;
 int ret;

 trace_assign_type(entry, iter->ent);


 ret = trace_seq_printf(s, "  -      ");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 switch (entry->type_id) {
 case 129:
  ret = trace_seq_printf(s, "K     ");
  break;
 case 130:
  ret = trace_seq_printf(s, "C     ");
  break;
 case 128:
  ret = trace_seq_printf(s, "P     ");
  break;
 default:
  ret = trace_seq_printf(s, "?     ");
 }

 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 ret = trace_seq_printf(s, "                       ");
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 ret = trace_seq_printf(s, "0x%tx   ", (ptrdiff_t)entry->ptr);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;


 ret = trace_seq_printf(s, "       %pf\n", (void *)entry->call_site);
 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;

 return TRACE_TYPE_HANDLED;
}
