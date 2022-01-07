
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_handle {int dummy; } ;
typedef int debug_type ;


 int DEBUG_KIND_BOOL ;
 int debug_make_type (struct debug_handle*,int ,unsigned int) ;

debug_type
debug_make_bool_type (void *handle, unsigned int size)
{
  struct debug_handle *info = (struct debug_handle *) handle;

  return debug_make_type (info, DEBUG_KIND_BOOL, size);
}
