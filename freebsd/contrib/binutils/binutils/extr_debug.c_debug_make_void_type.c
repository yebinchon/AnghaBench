
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_handle {int dummy; } ;
typedef int debug_type ;


 int DEBUG_KIND_VOID ;
 int debug_make_type (struct debug_handle*,int ,int ) ;

debug_type
debug_make_void_type (void *handle)
{
  struct debug_handle *info = (struct debug_handle *) handle;

  return debug_make_type (info, DEBUG_KIND_VOID, 0);
}
