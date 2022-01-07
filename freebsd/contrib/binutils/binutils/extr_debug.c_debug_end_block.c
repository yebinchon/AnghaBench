
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_handle {struct debug_block* current_block; int * current_unit; } ;
struct debug_block {int end; struct debug_block* parent; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int debug_error (int ) ;

bfd_boolean
debug_end_block (void *handle, bfd_vma addr)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_block *parent;

  if (info->current_unit == ((void*)0)
      || info->current_block == ((void*)0))
    {
      debug_error (_("debug_end_block: no current block"));
      return FALSE;
    }

  parent = info->current_block->parent;
  if (parent == ((void*)0))
    {
      debug_error (_("debug_end_block: attempt to close top level block"));
      return FALSE;
    }

  info->current_block->end = addr;

  info->current_block = parent;

  return TRUE;
}
