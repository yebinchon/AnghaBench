
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int kint; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
typedef struct debug_type* debug_type ;
typedef int bfd_boolean ;


 int DEBUG_KIND_INT ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,unsigned int) ;

debug_type
debug_make_int_type (void *handle, unsigned int size, bfd_boolean unsignedp)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;

  t = debug_make_type (info, DEBUG_KIND_INT, size);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  t->u.kint = unsignedp;

  return t;
}
