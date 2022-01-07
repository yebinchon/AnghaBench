
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_class_type* kclass; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
struct debug_class_type {struct debug_type* vptrbase; int * methods; int * baseclasses; int * fields; } ;
typedef struct debug_type* debug_type ;
typedef int debug_method ;
typedef int debug_field ;
typedef int debug_baseclass ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_boolean ;


 int DEBUG_KIND_CLASS ;
 int DEBUG_KIND_UNION_CLASS ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_class_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_make_object_type (void *handle, bfd_boolean structp, bfd_vma size,
   debug_field *fields, debug_baseclass *baseclasses,
   debug_method *methods, debug_type vptrbase,
   bfd_boolean ownvptr)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_class_type *c;

  t = debug_make_type (info,
         structp ? DEBUG_KIND_CLASS : DEBUG_KIND_UNION_CLASS,
         size);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  c = (struct debug_class_type *) xmalloc (sizeof *c);
  memset (c, 0, sizeof *c);

  c->fields = fields;
  c->baseclasses = baseclasses;
  c->methods = methods;
  if (ownvptr)
    c->vptrbase = t;
  else
    c->vptrbase = vptrbase;

  t->u.kclass = c;

  return t;
}
