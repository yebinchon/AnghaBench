
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_offset_type* koffset; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_offset_type {struct debug_type* target_type; struct debug_type* base_type; } ;
struct debug_handle {int dummy; } ;
typedef struct debug_type* debug_type ;


 int DEBUG_KIND_OFFSET ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_offset_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_make_offset_type (void *handle, debug_type base_type,
   debug_type target_type)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_offset_type *o;

  if (base_type == ((void*)0) || target_type == ((void*)0))
    return DEBUG_TYPE_NULL;

  t = debug_make_type (info, DEBUG_KIND_OFFSET, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  o = (struct debug_offset_type *) xmalloc (sizeof *o);
  memset (o, 0, sizeof *o);

  o->base_type = base_type;
  o->target_type = target_type;

  t->u.koffset = o;

  return t;
}
