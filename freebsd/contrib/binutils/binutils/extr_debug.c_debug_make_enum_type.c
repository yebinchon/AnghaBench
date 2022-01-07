
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_enum_type* kenum; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
struct debug_enum_type {char const** names; int * values; } ;
typedef struct debug_type* debug_type ;
typedef int bfd_signed_vma ;


 int DEBUG_KIND_ENUM ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_enum_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_make_enum_type (void *handle, const char **names,
        bfd_signed_vma *values)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_enum_type *e;

  t = debug_make_type (info, DEBUG_KIND_ENUM, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  e = (struct debug_enum_type *) xmalloc (sizeof *e);
  memset (e, 0, sizeof *e);

  e->names = names;
  e->values = values;

  t->u.kenum = e;

  return t;
}
