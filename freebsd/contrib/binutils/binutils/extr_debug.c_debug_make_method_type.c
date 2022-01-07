
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_method_type* kmethod; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_method_type {int varargs; struct debug_type** arg_types; struct debug_type* domain_type; struct debug_type* return_type; } ;
struct debug_handle {int dummy; } ;
typedef struct debug_type* debug_type ;
typedef int bfd_boolean ;


 int DEBUG_KIND_METHOD ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_method_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_make_method_type (void *handle, debug_type return_type,
   debug_type domain_type, debug_type *arg_types,
   bfd_boolean varargs)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_method_type *m;

  if (return_type == ((void*)0))
    return DEBUG_TYPE_NULL;

  t = debug_make_type (info, DEBUG_KIND_METHOD, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  m = (struct debug_method_type *) xmalloc (sizeof *m);
  memset (m, 0, sizeof *m);

  m->return_type = return_type;
  m->domain_type = domain_type;
  m->arg_types = arg_types;
  m->varargs = varargs;

  t->u.kmethod = m;

  return t;
}
