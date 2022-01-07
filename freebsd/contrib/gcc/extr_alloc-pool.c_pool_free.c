
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* alloc_pool_list ;
typedef TYPE_2__* alloc_pool ;
struct TYPE_9__ {scalar_t__ id; } ;
struct TYPE_8__ {int data; } ;
struct TYPE_7__ {scalar_t__ id; scalar_t__ elts_free; scalar_t__ elts_allocated; TYPE_1__* free_list; scalar_t__ elt_size; } ;
struct TYPE_6__ {struct TYPE_6__* next; } ;


 TYPE_5__* ALLOCATION_OBJECT_PTR_FROM_USER_PTR (void*) ;
 int allocation_object ;
 int gcc_assert (int) ;
 int memset (void*,int,scalar_t__) ;
 scalar_t__ offsetof (int ,int ) ;
 TYPE_3__ u ;

void
pool_free (alloc_pool pool, void *ptr)
{
  alloc_pool_list header;

  gcc_assert (ptr);
  gcc_assert (pool->elts_free < pool->elts_allocated);


  header = (alloc_pool_list) ptr;
  header->next = pool->free_list;
  pool->free_list = header;
  pool->elts_free++;
}
