
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ptr; int base; int limit; } ;
typedef TYPE_1__ sstring ;


 int xrealloc (int,int) ;

void
make_sstring_space (sstring *str, int count)
{
  int cur_pos = str->ptr - str->base;
  int cur_size = str->limit - str->base;
  int new_size = cur_pos + count + 100;

  if (new_size <= cur_size)
    return;

  str->base = xrealloc (str->base, new_size);
  str->ptr = str->base + cur_size;
  str->limit = str->base + new_size;
}
