
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_typed_constant {int val; int * type; } ;
struct TYPE_2__ {struct debug_typed_constant* typed_constant; } ;
struct debug_name {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
typedef int * debug_type ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int DEBUG_LINKAGE_NONE ;
 int DEBUG_OBJECT_TYPED_CONSTANT ;
 int FALSE ;
 int TRUE ;
 struct debug_name* debug_add_to_current_namespace (struct debug_handle*,char const*,int ,int ) ;
 int memset (struct debug_typed_constant*,int ,int) ;
 scalar_t__ xmalloc (int) ;

bfd_boolean
debug_record_typed_const (void *handle, const char *name, debug_type type,
     bfd_vma val)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_name *n;
  struct debug_typed_constant *tc;

  if (name == ((void*)0) || type == ((void*)0))
    return FALSE;

  n = debug_add_to_current_namespace (info, name, DEBUG_OBJECT_TYPED_CONSTANT,
          DEBUG_LINKAGE_NONE);
  if (n == ((void*)0))
    return FALSE;

  tc = (struct debug_typed_constant *) xmalloc (sizeof *tc);
  memset (tc, 0, sizeof *tc);

  tc->type = type;
  tc->val = val;

  n->u.typed_constant = tc;

  return TRUE;
}
