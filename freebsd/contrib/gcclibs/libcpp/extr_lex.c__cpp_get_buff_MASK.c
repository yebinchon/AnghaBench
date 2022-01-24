#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* free_buffs; } ;
typedef  TYPE_1__ cpp_reader ;
struct TYPE_7__ {size_t limit; size_t base; size_t cur; struct TYPE_7__* next; } ;
typedef  TYPE_2__ _cpp_buff ;

/* Variables and functions */
 size_t FUNC0 (size_t) ; 
 TYPE_2__* FUNC1 (size_t) ; 

_cpp_buff *
FUNC2 (cpp_reader *pfile, size_t min_size)
{
  _cpp_buff *result, **p;

  for (p = &pfile->free_buffs;; p = &(*p)->next)
    {
      size_t size;

      if (*p == NULL)
	return FUNC1 (min_size);
      result = *p;
      size = result->limit - result->base;
      /* Return a buffer that's big enough, but don't waste one that's
         way too big.  */
      if (size >= min_size && size <= FUNC0 (min_size))
	break;
    }

  *p = result->next;
  result->next = NULL;
  result->cur = result->base;
  return result;
}