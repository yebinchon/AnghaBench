
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_type* kpointer; } ;
struct debug_type {struct debug_type* pointer; TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
typedef struct debug_type* debug_type ;


 int DEBUG_KIND_POINTER ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;

debug_type
debug_make_pointer_type (void *handle, debug_type type)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;

  if (type == ((void*)0))
    return DEBUG_TYPE_NULL;

  if (type->pointer != DEBUG_TYPE_NULL)
    return type->pointer;

  t = debug_make_type (info, DEBUG_KIND_POINTER, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  t->u.kpointer = type;

  type->pointer = t;

  return t;
}
