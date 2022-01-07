
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {char* len; int buffer; } ;


 int TRACE_SEQ_CHECK (struct trace_seq*) ;
 int printf (char*,char*,int ) ;

int trace_seq_do_printf(struct trace_seq *s)
{
 TRACE_SEQ_CHECK(s);
 return printf("%.*s", s->len, s->buffer);
}
