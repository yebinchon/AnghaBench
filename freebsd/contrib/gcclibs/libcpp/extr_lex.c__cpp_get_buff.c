
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* free_buffs; } ;
typedef TYPE_1__ cpp_reader ;
struct TYPE_7__ {size_t limit; size_t base; size_t cur; struct TYPE_7__* next; } ;
typedef TYPE_2__ _cpp_buff ;


 size_t BUFF_SIZE_UPPER_BOUND (size_t) ;
 TYPE_2__* new_buff (size_t) ;

_cpp_buff *
_cpp_get_buff (cpp_reader *pfile, size_t min_size)
{
  _cpp_buff *result, **p;

  for (p = &pfile->free_buffs;; p = &(*p)->next)
    {
      size_t size;

      if (*p == ((void*)0))
 return new_buff (min_size);
      result = *p;
      size = result->limit - result->base;


      if (size >= min_size && size <= BUFF_SIZE_UPPER_BOUND (min_size))
 break;
    }

  *p = result->next;
  result->next = ((void*)0);
  result->cur = result->base;
  return result;
}
