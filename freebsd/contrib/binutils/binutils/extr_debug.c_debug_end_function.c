
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_handle {TYPE_1__* current_block; int * current_function; int * current_unit; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {int end; int * parent; } ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int debug_error (int ) ;

bfd_boolean
debug_end_function (void *handle, bfd_vma addr)
{
  struct debug_handle *info = (struct debug_handle *) handle;

  if (info->current_unit == ((void*)0)
      || info->current_block == ((void*)0)
      || info->current_function == ((void*)0))
    {
      debug_error (_("debug_end_function: no current function"));
      return FALSE;
    }

  if (info->current_block->parent != ((void*)0))
    {
      debug_error (_("debug_end_function: some blocks were not closed"));
      return FALSE;
    }

  info->current_block->end = addr;

  info->current_function = ((void*)0);
  info->current_block = ((void*)0);

  return TRUE;
}
