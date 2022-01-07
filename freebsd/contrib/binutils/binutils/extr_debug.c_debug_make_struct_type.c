
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_class_type* kclass; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
struct debug_class_type {int * fields; } ;
typedef struct debug_type* debug_type ;
typedef int debug_field ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_boolean ;


 int DEBUG_KIND_STRUCT ;
 int DEBUG_KIND_UNION ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_class_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_make_struct_type (void *handle, bfd_boolean structp, bfd_vma size,
   debug_field *fields)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_class_type *c;

  t = debug_make_type (info,
         structp ? DEBUG_KIND_STRUCT : DEBUG_KIND_UNION,
         size);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  c = (struct debug_class_type *) xmalloc (sizeof *c);
  memset (c, 0, sizeof *c);

  c->fields = fields;

  t->u.kclass = c;

  return t;
}
