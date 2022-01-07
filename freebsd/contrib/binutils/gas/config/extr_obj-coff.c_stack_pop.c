
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer; scalar_t__ element_size; char* data; } ;
typedef TYPE_1__ stack ;



__attribute__((used)) static char *
stack_pop (stack *st)
{
  if (st->pointer < st->element_size)
    {
      st->pointer = 0;
      return ((void*)0);
    }
  st->pointer -= st->element_size;
  return st->data + st->pointer;
}
