
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct debug_write_fns {int (* start_source ) (void*,int ) ;int (* start_compilation_unit ) (void*,int ) ;} ;
struct debug_unit {struct debug_file* files; int linenos; struct debug_unit* next; } ;
struct debug_name {struct debug_name* next; } ;
struct debug_handle {scalar_t__ current_write_lineno_index; int current_write_lineno; struct debug_unit* units; int * id_list; int class_id; int base_id; int mark; } ;
struct debug_file {TYPE_1__* globals; int filename; struct debug_file* next; } ;
typedef int bfd_vma ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_2__ {struct debug_name* list; } ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int debug_write_linenos (struct debug_handle*,struct debug_write_fns const*,void*,int ) ;
 int debug_write_name (struct debug_handle*,struct debug_write_fns const*,void*,struct debug_name*) ;
 int stub1 (void*,int ) ;
 int stub2 (void*,int ) ;

bfd_boolean
debug_write (void *handle, const struct debug_write_fns *fns, void *fhandle)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_unit *u;





  ++info->mark;




  info->base_id = info->class_id;



  info->id_list = ((void*)0);

  for (u = info->units; u != ((void*)0); u = u->next)
    {
      struct debug_file *f;
      bfd_boolean first_file;

      info->current_write_lineno = u->linenos;
      info->current_write_lineno_index = 0;

      if (! (*fns->start_compilation_unit) (fhandle, u->files->filename))
 return FALSE;

      first_file = TRUE;
      for (f = u->files; f != ((void*)0); f = f->next)
 {
   struct debug_name *n;

   if (first_file)
     first_file = FALSE;
   else if (! (*fns->start_source) (fhandle, f->filename))
     return FALSE;

   if (f->globals != ((void*)0))
     for (n = f->globals->list; n != ((void*)0); n = n->next)
       if (! debug_write_name (info, fns, fhandle, n))
  return FALSE;
 }



      if (! debug_write_linenos (info, fns, fhandle, (bfd_vma) -1))
 return FALSE;
    }

  return TRUE;
}
