
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int buffer_size; int buffer; scalar_t__ readpos; scalar_t__ len; } ;


 int TRACE_SEQ_BUF_SIZE ;
 int malloc_or_die (int ) ;

void trace_seq_init(struct trace_seq *s)
{
 s->len = 0;
 s->readpos = 0;
 s->buffer_size = TRACE_SEQ_BUF_SIZE;
 s->buffer = malloc_or_die(s->buffer_size);
}
