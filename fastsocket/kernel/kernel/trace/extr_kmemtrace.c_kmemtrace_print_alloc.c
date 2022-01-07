
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int dummy; } ;
struct trace_iterator {int ent; struct trace_seq seq; } ;
struct kmemtrace_alloc_entry {int node; scalar_t__ gfp_flags; scalar_t__ bytes_alloc; scalar_t__ bytes_req; scalar_t__ ptr; scalar_t__ call_site; int type_id; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;


 int TRACE_TYPE_HANDLED ;
 int TRACE_TYPE_PARTIAL_LINE ;
 int trace_assign_type (struct kmemtrace_alloc_entry*,int ) ;
 int trace_seq_printf (struct trace_seq*,char*,int ,void*,unsigned long,unsigned long,unsigned long,unsigned long,int ) ;

__attribute__((used)) static enum print_line_t
kmemtrace_print_alloc(struct trace_iterator *iter, int flags)
{
 struct trace_seq *s = &iter->seq;
 struct kmemtrace_alloc_entry *entry;
 int ret;

 trace_assign_type(entry, iter->ent);

 ret = trace_seq_printf(s, "type_id %d call_site %pF ptr %lu "
     "bytes_req %lu bytes_alloc %lu gfp_flags %lu node %d\n",
     entry->type_id, (void *)entry->call_site, (unsigned long)entry->ptr,
     (unsigned long)entry->bytes_req, (unsigned long)entry->bytes_alloc,
     (unsigned long)entry->gfp_flags, entry->node);

 if (!ret)
  return TRACE_TYPE_PARTIAL_LINE;
 return TRACE_TYPE_HANDLED;
}
