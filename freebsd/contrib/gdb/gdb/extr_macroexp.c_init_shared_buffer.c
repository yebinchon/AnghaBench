
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_buffer {char* text; int len; int shared; int last_token; scalar_t__ size; } ;



__attribute__((used)) static void
init_shared_buffer (struct macro_buffer *buf, char *addr, int len)
{
  buf->text = addr;
  buf->len = len;
  buf->shared = 1;
  buf->size = 0;
  buf->last_token = -1;
}
