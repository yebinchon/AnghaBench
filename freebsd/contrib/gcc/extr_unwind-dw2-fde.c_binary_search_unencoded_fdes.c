
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uaddr ;
struct TYPE_4__ {struct fde_vector* sort; } ;
struct object {TYPE_1__ u; } ;
struct fde_vector {size_t count; TYPE_2__** array; } ;
struct TYPE_5__ {scalar_t__ pc_begin; } ;
typedef TYPE_2__ fde ;



__attribute__((used)) static inline const fde *
binary_search_unencoded_fdes (struct object *ob, void *pc)
{
  struct fde_vector *vec = ob->u.sort;
  size_t lo, hi;

  for (lo = 0, hi = vec->count; lo < hi; )
    {
      size_t i = (lo + hi) / 2;
      const fde *f = vec->array[i];
      void *pc_begin;
      uaddr pc_range;

      pc_begin = ((void **) f->pc_begin)[0];
      pc_range = ((uaddr *) f->pc_begin)[1];

      if (pc < pc_begin)
 hi = i;
      else if (pc >= pc_begin + pc_range)
 lo = i + 1;
      else
 return f;
    }

  return ((void*)0);
}
