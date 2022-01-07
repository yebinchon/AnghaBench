
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int len; void* buffer; } ;


 int PAGE_SIZE ;

void *trace_seq_reserve(struct trace_seq *s, size_t len)
{
 void *ret;

 if (len > ((PAGE_SIZE - 1) - s->len))
  return ((void*)0);

 ret = s->buffer + s->len;
 s->len += len;

 return ret;
}
