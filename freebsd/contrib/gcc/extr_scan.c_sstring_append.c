
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {char* ptr; char* base; } ;
typedef TYPE_1__ sstring ;


 int MAKE_SSTRING_SPACE (TYPE_1__*,int) ;
 int SSTRING_LENGTH (TYPE_1__*) ;

void
sstring_append (sstring *dst, sstring *src)
{
  char *d, *s;
  int count = SSTRING_LENGTH (src);

  MAKE_SSTRING_SPACE (dst, count + 1);
  d = dst->ptr;
  s = src->base;
  while (--count >= 0) *d++ = *s++;
  dst->ptr = d;
  *d = 0;
}
