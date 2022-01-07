
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct trace_iterator {int seq; TYPE_1__* trace; scalar_t__ tr; int * ent; } ;
struct seq_file {int dummy; } ;
struct TYPE_2__ {int (* print_header ) (struct seq_file*) ;int name; } ;


 int print_trace_line (struct trace_iterator*) ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_puts (struct seq_file*,char*) ;
 int stub1 (struct seq_file*) ;
 int trace_default_header (struct seq_file*) ;
 int trace_print_seq (struct seq_file*,int *) ;

__attribute__((used)) static int s_show(struct seq_file *m, void *v)
{
 struct trace_iterator *iter = v;

 if (iter->ent == ((void*)0)) {
  if (iter->tr) {
   seq_printf(m, "# tracer: %s\n", iter->trace->name);
   seq_puts(m, "#\n");
  }
  if (iter->trace && iter->trace->print_header)
   iter->trace->print_header(m);
  else
   trace_default_header(m);

 } else {
  print_trace_line(iter);
  trace_print_seq(m, &iter->seq);
 }

 return 0;
}
