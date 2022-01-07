
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int len; unsigned char* buffer; } ;


 int PAGE_SIZE ;

int trace_seq_putc(struct trace_seq *s, unsigned char c)
{
 if (s->len >= (PAGE_SIZE - 1))
  return 0;

 s->buffer[s->len++] = c;

 return 1;
}
