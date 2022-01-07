
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t real_len; size_t buffer_len; char* buffer_base; char* dest_string; } ;
typedef TYPE_1__ xprintf_struct ;


 size_t ALLOC_CHUNK ;
 size_t ALLOC_SECURITY_MARGIN ;
 int EOF ;
 scalar_t__ realloc (void*,size_t) ;

__attribute__((used)) static int realloc_buff(xprintf_struct *s, size_t len)
{
  char * ptr;

  if (len + ALLOC_SECURITY_MARGIN + s->real_len > s->buffer_len) {
    len += s->real_len + ALLOC_CHUNK;
    ptr = (char *)realloc((void *)(s->buffer_base), len);
    if (ptr == ((void*)0)) {
      s->buffer_base = ((void*)0);
      return EOF;
    }

    s->dest_string = ptr + (size_t)(s->dest_string - s->buffer_base);
    s->buffer_base = ptr;
    s->buffer_len = len;

    (s->buffer_base)[s->buffer_len - 1] = 1;
  }

  return 0;
}
