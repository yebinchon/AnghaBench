
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_lineno {scalar_t__ file; unsigned long* linenos; struct debug_lineno* next; void** addrs; } ;
struct debug_handle {scalar_t__ current_file; struct debug_lineno* current_lineno; TYPE_1__* current_unit; } ;
typedef void* bfd_vma ;
typedef int bfd_boolean ;
struct TYPE_2__ {struct debug_lineno* linenos; } ;


 unsigned int DEBUG_LINENO_COUNT ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int debug_error (int ) ;
 int memset (struct debug_lineno*,int ,int) ;
 scalar_t__ xmalloc (int) ;

bfd_boolean
debug_record_line (void *handle, unsigned long lineno, bfd_vma addr)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_lineno *l;
  unsigned int i;

  if (info->current_unit == ((void*)0))
    {
      debug_error (_("debug_record_line: no current unit"));
      return FALSE;
    }

  l = info->current_lineno;
  if (l != ((void*)0) && l->file == info->current_file)
    {
      for (i = 0; i < DEBUG_LINENO_COUNT; i++)
 {
   if (l->linenos[i] == (unsigned long) -1)
     {
       l->linenos[i] = lineno;
       l->addrs[i] = addr;
       return TRUE;
     }
 }
    }
  l = (struct debug_lineno *) xmalloc (sizeof *l);
  memset (l, 0, sizeof *l);

  l->file = info->current_file;
  l->linenos[0] = lineno;
  l->addrs[0] = addr;
  for (i = 1; i < DEBUG_LINENO_COUNT; i++)
    l->linenos[i] = (unsigned long) -1;

  if (info->current_lineno != ((void*)0))
    info->current_lineno->next = l;
  else
    info->current_unit->linenos = l;

  info->current_lineno = l;

  return TRUE;
}
