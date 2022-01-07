
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct debug_set_type* kset; } ;
struct debug_type {TYPE_1__ u; } ;
struct debug_set_type {int bitstringp; struct debug_type* type; } ;
struct debug_handle {int dummy; } ;
typedef struct debug_type* debug_type ;
typedef int bfd_boolean ;


 int DEBUG_KIND_SET ;
 struct debug_type* DEBUG_TYPE_NULL ;
 struct debug_type* debug_make_type (struct debug_handle*,int ,int ) ;
 int memset (struct debug_set_type*,int ,int) ;
 scalar_t__ xmalloc (int) ;

debug_type
debug_make_set_type (void *handle, debug_type type, bfd_boolean bitstringp)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_type *t;
  struct debug_set_type *s;

  if (type == ((void*)0))
    return DEBUG_TYPE_NULL;

  t = debug_make_type (info, DEBUG_KIND_SET, 0);
  if (t == ((void*)0))
    return DEBUG_TYPE_NULL;

  s = (struct debug_set_type *) xmalloc (sizeof *s);
  memset (s, 0, sizeof *s);

  s->type = type;
  s->bitstringp = bitstringp;

  t->u.kset = s;

  return t;
}
