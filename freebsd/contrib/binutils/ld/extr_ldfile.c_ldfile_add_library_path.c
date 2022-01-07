
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sysrooted; int name; struct TYPE_5__* next; scalar_t__ cmdline; } ;
typedef TYPE_1__ search_dirs_type ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_6__ {scalar_t__ only_cmd_line_lib_dirs; } ;


 int FALSE ;
 int TRUE ;
 int concat (int ,char const*,int *) ;
 TYPE_4__ config ;
 int is_sysrooted_pathname (char const*,int ) ;
 int ld_sysroot ;
 TYPE_1__** search_tail_ptr ;
 TYPE_1__* xmalloc (int) ;
 int xstrdup (char const*) ;

void
ldfile_add_library_path (const char *name, bfd_boolean cmdline)
{
  search_dirs_type *new;

  if (!cmdline && config.only_cmd_line_lib_dirs)
    return;

  new = xmalloc (sizeof (search_dirs_type));
  new->next = ((void*)0);
  new->cmdline = cmdline;
  *search_tail_ptr = new;
  search_tail_ptr = &new->next;



  if (name[0] == '=')
    {
      new->name = concat (ld_sysroot, name + 1, ((void*)0));
      new->sysrooted = TRUE;
    }
  else
    {
      new->name = xstrdup (name);
      new->sysrooted = is_sysrooted_pathname (name, FALSE);
    }
}
