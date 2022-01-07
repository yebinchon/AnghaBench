
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_write_fns {int (* end_block ) (void*,int ) ;int (* start_block ) (void*,int ) ;} ;
struct debug_name {struct debug_name* next; } ;
struct debug_handle {int dummy; } ;
struct debug_block {int end; int * parent; TYPE_1__* locals; struct debug_block* next; struct debug_block* children; int start; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {struct debug_name* list; } ;


 int FALSE ;
 int TRUE ;
 int debug_write_linenos (struct debug_handle*,struct debug_write_fns const*,void*,int ) ;
 int debug_write_name (struct debug_handle*,struct debug_write_fns const*,void*,struct debug_name*) ;
 int stub1 (void*,int ) ;
 int stub2 (void*,int ) ;

__attribute__((used)) static bfd_boolean
debug_write_block (struct debug_handle *info,
     const struct debug_write_fns *fns, void *fhandle,
     struct debug_block *block)
{
  struct debug_name *n;
  struct debug_block *b;

  if (! debug_write_linenos (info, fns, fhandle, block->start))
    return FALSE;



  if (block->locals != ((void*)0) || block->parent == ((void*)0))
    {
      if (! (*fns->start_block) (fhandle, block->start))
 return FALSE;
    }

  if (block->locals != ((void*)0))
    {
      for (n = block->locals->list; n != ((void*)0); n = n->next)
 {
   if (! debug_write_name (info, fns, fhandle, n))
     return FALSE;
 }
    }

  for (b = block->children; b != ((void*)0); b = b->next)
    {
      if (! debug_write_block (info, fns, fhandle, b))
 return FALSE;
    }

  if (! debug_write_linenos (info, fns, fhandle, block->end))
    return FALSE;

  if (block->locals != ((void*)0) || block->parent == ((void*)0))
    {
      if (! (*fns->end_block) (fhandle, block->end))
 return FALSE;
    }

  return TRUE;
}
