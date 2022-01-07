
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int len; int buffer; } ;


 int PAGE_SIZE ;
 int memcpy (int,void const*,size_t) ;

int trace_seq_putmem(struct trace_seq *s, const void *mem, size_t len)
{
 if (len > ((PAGE_SIZE - 1) - s->len))
  return 0;

 memcpy(s->buffer + s->len, mem, len);
 s->len += len;

 return len;
}
