
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pointer; scalar_t__ element_size; scalar_t__ size; scalar_t__ chunk_size; char* data; } ;
typedef TYPE_1__ stack ;


 int memcpy (char*,char*,scalar_t__) ;
 char* xrealloc (char*,scalar_t__) ;

__attribute__((used)) static char *
stack_push (stack *st, char *element)
{
  if (st->pointer + st->element_size >= st->size)
    {
      st->size += st->chunk_size;
      if ((st->data = xrealloc (st->data, st->size)) == ((void*)0))
 return ((void*)0);
    }
  memcpy (st->data + st->pointer, element, st->element_size);
  st->pointer += st->element_size;
  return st->data + st->pointer;
}
