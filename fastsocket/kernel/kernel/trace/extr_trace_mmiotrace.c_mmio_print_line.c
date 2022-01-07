
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {TYPE_1__* ent; } ;
typedef enum print_line_t { ____Placeholder_print_line_t } print_line_t ;
struct TYPE_2__ {int type; } ;





 int TRACE_TYPE_HANDLED ;
 int mmio_print_map (struct trace_iterator*) ;
 int mmio_print_mark (struct trace_iterator*) ;
 int mmio_print_rw (struct trace_iterator*) ;

__attribute__((used)) static enum print_line_t mmio_print_line(struct trace_iterator *iter)
{
 switch (iter->ent->type) {
 case 129:
  return mmio_print_rw(iter);
 case 130:
  return mmio_print_map(iter);
 case 128:
  return mmio_print_mark(iter);
 default:
  return TRACE_TYPE_HANDLED;
 }
}
