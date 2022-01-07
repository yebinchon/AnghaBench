
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* alloc_pool ;
struct TYPE_4__ {scalar_t__ elts_free; scalar_t__ elts_allocated; } ;


 int free_alloc_pool (TYPE_1__*) ;

void
free_alloc_pool_if_empty (alloc_pool *pool)
{
  if ((*pool)->elts_free == (*pool)->elts_allocated)
    {
      free_alloc_pool (*pool);
      *pool = ((void*)0);
    }
}
