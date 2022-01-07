
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int len; scalar_t__ buffer; } ;


 int PAGE_SIZE ;
 int memcpy (scalar_t__,char const*,int) ;
 int strlen (char const*) ;

int trace_seq_puts(struct trace_seq *s, const char *str)
{
 int len = strlen(str);

 if (len > ((PAGE_SIZE - 1) - s->len))
  return 0;

 memcpy(s->buffer + s->len, str, len);
 s->len += len;

 return len;
}
