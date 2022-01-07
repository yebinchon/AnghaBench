
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_range_type* krange; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_range_type {void* upper; void* lower; struct debug_type* type; } ;
struct debug_handle {int dummy; } ;
typedef struct debug_type* debug_type ;
typedef void* bfd_signed_vma ;


 int DEBUG_KIND_RANGE ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_range_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_make_range_type (void *handle, debug_type type, bfd_signed_vma lower,
         bfd_signed_vma upper)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_range_type *r;

  if (type == ((void*)0))
    return DEBUG_TYPE_NULL;

  t = debug_make_type (info, DEBUG_KIND_RANGE, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  r = (struct debug_range_type *) xmalloc (sizeof *r);
  memset (r, 0, sizeof *r);

  r->type = type;
  r->lower = lower;
  r->upper = upper;

  t->u.krange = r;

  return t;
}
