
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_seq {int buffer; int buffer_size; } ;


 scalar_t__ TRACE_SEQ_BUF_SIZE ;
 int die (char*) ;
 int realloc (int ,int ) ;

__attribute__((used)) static void expand_buffer(struct trace_seq *s)
{
 s->buffer_size += TRACE_SEQ_BUF_SIZE;
 s->buffer = realloc(s->buffer, s->buffer_size);
 if (!s->buffer)
  die("Can't allocate trace_seq buffer memory");
}
