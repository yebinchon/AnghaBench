
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_iterator {struct trace_entry* ent; } ;
struct trace_entry {int type; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;




 int TRACE_TYPE_UNHANDLED ;
 int initcall_call_print_line (struct trace_iterator*) ;
 int initcall_ret_print_line (struct trace_iterator*) ;

__attribute__((used)) static enum print_line_t initcall_print_line(struct trace_iterator *iter)
{
 struct trace_entry *entry = iter->ent;

 switch (entry->type) {
 case 129:
  return initcall_call_print_line(iter);
 case 128:
  return initcall_ret_print_line(iter);
 default:
  return TRACE_TYPE_UNHANDLED;
 }
}
