
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned long size; unsigned long chunk_size; unsigned long element_size; scalar_t__ pointer; void* data; } ;
typedef TYPE_1__ stack ;


 int free (TYPE_1__*) ;
 void* malloc (unsigned long) ;

__attribute__((used)) static stack *
stack_init (unsigned long chunk_size,
     unsigned long element_size)
{
  stack *st;

  st = malloc (sizeof (* st));
  if (!st)
    return ((void*)0);
  st->data = malloc (chunk_size);
  if (!st->data)
    {
      free (st);
      return ((void*)0);
    }
  st->pointer = 0;
  st->size = chunk_size;
  st->chunk_size = chunk_size;
  st->element_size = element_size;
  return st;
}
