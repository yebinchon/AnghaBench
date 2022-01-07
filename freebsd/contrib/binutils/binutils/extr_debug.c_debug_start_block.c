
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_handle {struct debug_block* current_block; int * current_unit; } ;
struct debug_block {struct debug_block* next; struct debug_block* children; void* end; void* start; struct debug_block* parent; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int debug_error (int ) ;
 int memset (struct debug_block*,int ,int) ;
 scalar_t__ xmalloc (int) ;

bfd_boolean
debug_start_block (void *handle, bfd_vma addr)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_block *b, **pb;



  if (info->current_unit == ((void*)0)
      || info->current_block == ((void*)0))
    {
      debug_error (_("debug_start_block: no current block"));
      return FALSE;
    }

  b = (struct debug_block *) xmalloc (sizeof *b);
  memset (b, 0, sizeof *b);

  b->parent = info->current_block;
  b->start = addr;
  b->end = (bfd_vma) -1;


  for (pb = &info->current_block->children;
       *pb != ((void*)0);
       pb = &(*pb)->next)
    ;
  *pb = b;

  info->current_block = b;

  return TRUE;
}
