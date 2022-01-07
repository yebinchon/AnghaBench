
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int len; int buffer; } ;
struct seq_file {int dummy; } ;


 int PAGE_SIZE ;
 int seq_write (struct seq_file*,int ,int) ;
 int trace_seq_init (struct trace_seq*) ;

void trace_print_seq(struct seq_file *m, struct trace_seq *s)
{
 int len = s->len >= PAGE_SIZE ? PAGE_SIZE - 1 : s->len;

 seq_write(m, s->buffer, len);

 trace_seq_init(s);
}
