
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debug_unit {char const* filename; struct debug_unit* next; struct debug_unit* files; } ;
struct debug_handle {int * current_lineno; int * current_block; int * current_function; struct debug_unit* current_unit; struct debug_unit* units; struct debug_unit* current_file; } ;
struct debug_file {char const* filename; struct debug_file* next; struct debug_file* files; } ;
typedef int bfd_boolean ;


 int TRUE ;
 int assert (int ) ;
 int memset (struct debug_unit*,int ,int) ;
 scalar_t__ xmalloc (int) ;

bfd_boolean
debug_set_filename (void *handle, const char *name)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_file *nfile;
  struct debug_unit *nunit;

  if (name == ((void*)0))
    name = "";

  nfile = (struct debug_file *) xmalloc (sizeof *nfile);
  memset (nfile, 0, sizeof *nfile);

  nfile->filename = name;

  nunit = (struct debug_unit *) xmalloc (sizeof *nunit);
  memset (nunit, 0, sizeof *nunit);

  nunit->files = nfile;
  info->current_file = nfile;

  if (info->current_unit != ((void*)0))
    info->current_unit->next = nunit;
  else
    {
      assert (info->units == ((void*)0));
      info->units = nunit;
    }

  info->current_unit = nunit;

  info->current_function = ((void*)0);
  info->current_block = ((void*)0);
  info->current_lineno = ((void*)0);

  return TRUE;
}
