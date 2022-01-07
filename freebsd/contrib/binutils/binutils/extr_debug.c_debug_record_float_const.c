
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {double float_constant; } ;
struct debug_name {TYPE_1__ u; } ;
struct debug_handle {int dummy; } ;
typedef int bfd_boolean ;


 int DEBUG_LINKAGE_NONE ;
 int DEBUG_OBJECT_FLOAT_CONSTANT ;
 int FALSE ;
 int TRUE ;
 struct debug_name* debug_add_to_current_namespace (struct debug_handle*,char const*,int ,int ) ;

bfd_boolean
debug_record_float_const (void *handle, const char *name, double val)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_name *n;

  if (name == ((void*)0))
    return FALSE;

  n = debug_add_to_current_namespace (info, name, DEBUG_OBJECT_FLOAT_CONSTANT,
          DEBUG_LINKAGE_NONE);
  if (n == ((void*)0))
    return FALSE;

  n->u.float_constant = val;

  return TRUE;
}
