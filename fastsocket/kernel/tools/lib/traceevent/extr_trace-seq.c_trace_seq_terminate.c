
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {size_t len; scalar_t__* buffer; } ;


 int TRACE_SEQ_CHECK (struct trace_seq*) ;

void trace_seq_terminate(struct trace_seq *s)
{
 TRACE_SEQ_CHECK(s);


 s->buffer[s->len] = 0;
}
