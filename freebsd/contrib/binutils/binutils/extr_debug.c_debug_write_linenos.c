
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_write_fns {int (* lineno ) (void*,int ,unsigned long,scalar_t__) ;} ;
struct debug_lineno {unsigned long* linenos; scalar_t__* addrs; struct debug_lineno* next; TYPE_1__* file; } ;
struct debug_handle {size_t current_write_lineno_index; struct debug_lineno* current_write_lineno; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {int filename; } ;


 size_t DEBUG_LINENO_COUNT ;
 int FALSE ;
 int TRUE ;
 int stub1 (void*,int ,unsigned long,scalar_t__) ;

__attribute__((used)) static bfd_boolean
debug_write_linenos (struct debug_handle *info,
       const struct debug_write_fns *fns, void *fhandle,
       bfd_vma address)
{
  while (info->current_write_lineno != ((void*)0))
    {
      struct debug_lineno *l;

      l = info->current_write_lineno;

      while (info->current_write_lineno_index < DEBUG_LINENO_COUNT)
 {
   if (l->linenos[info->current_write_lineno_index]
       == (unsigned long) -1)
     break;

   if (l->addrs[info->current_write_lineno_index] >= address)
     return TRUE;

   if (! (*fns->lineno) (fhandle, l->file->filename,
    l->linenos[info->current_write_lineno_index],
    l->addrs[info->current_write_lineno_index]))
     return FALSE;

   ++info->current_write_lineno_index;
 }

      info->current_write_lineno = l->next;
      info->current_write_lineno_index = 0;
    }

  return TRUE;
}
