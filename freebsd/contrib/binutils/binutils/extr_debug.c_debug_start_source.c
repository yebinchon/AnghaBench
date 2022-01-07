
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_handle {struct debug_file* current_file; TYPE_1__* current_unit; } ;
struct debug_file {char const* filename; struct debug_file* next; } ;
typedef int bfd_boolean ;
struct TYPE_2__ {struct debug_file* files; } ;


 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int debug_error (int ) ;
 int memset (struct debug_file*,int ,int) ;
 scalar_t__ strcmp (char const*,char const*) ;
 scalar_t__ xmalloc (int) ;

bfd_boolean
debug_start_source (void *handle, const char *name)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_file *f, **pf;

  if (name == ((void*)0))
    name = "";

  if (info->current_unit == ((void*)0))
    {
      debug_error (_("debug_start_source: no debug_set_filename call"));
      return FALSE;
    }

  for (f = info->current_unit->files; f != ((void*)0); f = f->next)
    {
      if (f->filename[0] == name[0]
   && f->filename[1] == name[1]
   && strcmp (f->filename, name) == 0)
 {
   info->current_file = f;
   return TRUE;
 }
    }

  f = (struct debug_file *) xmalloc (sizeof *f);
  memset (f, 0, sizeof *f);

  f->filename = name;

  for (pf = &info->current_file->next;
       *pf != ((void*)0);
       pf = &(*pf)->next)
    ;
  *pf = f;

  info->current_file = f;

  return TRUE;
}
