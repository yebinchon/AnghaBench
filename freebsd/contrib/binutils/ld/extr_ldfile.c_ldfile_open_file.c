
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int name; struct TYPE_8__* next; } ;
typedef TYPE_1__ search_arch_type ;
struct TYPE_9__ {int local_sym_name; scalar_t__ sysrooted; void* search_dirs_flag; int filename; int * the_bfd; } ;
typedef TYPE_2__ lang_input_statement_type ;
typedef void* bfd_boolean ;


 void* FALSE ;
 scalar_t__ IS_ABSOLUTE_PATH (int ) ;
 int _ (char*) ;
 int einfo (int ,int ,...) ;
 scalar_t__ ld_sysroot ;
 void* ldemul_find_potential_libraries (int ,TYPE_2__*) ;
 void* ldfile_open_file_search (int ,TYPE_2__*,char*,char*) ;
 scalar_t__ ldfile_try_open_bfd (int ,TYPE_2__*) ;
 TYPE_1__* search_arch_head ;
 scalar_t__ strcmp (int ,int ) ;

void
ldfile_open_file (lang_input_statement_type *entry)
{
  if (entry->the_bfd != ((void*)0))
    return;

  if (! entry->search_dirs_flag)
    {
      if (ldfile_try_open_bfd (entry->filename, entry))
 return;
      if (strcmp (entry->filename, entry->local_sym_name) != 0)
 einfo (_("%F%P: %s (%s): No such file: %E\n"),
        entry->filename, entry->local_sym_name);
      else
 einfo (_("%F%P: %s: No such file: %E\n"), entry->local_sym_name);
    }
  else
    {
      search_arch_type *arch;
      bfd_boolean found = FALSE;


      for (arch = search_arch_head; arch != ((void*)0); arch = arch->next)
 {
   found = ldfile_open_file_search (arch->name, entry, "lib", ".a");
   if (found)
     break;





   found = ldemul_find_potential_libraries (arch->name, entry);
   if (found)
     break;
 }



      if (found)
 entry->search_dirs_flag = FALSE;
      else if (entry->sysrooted
        && ld_sysroot
        && IS_ABSOLUTE_PATH (entry->local_sym_name))
 einfo (_("%F%P: cannot find %s inside %s\n"),
        entry->local_sym_name, ld_sysroot);
      else
 einfo (_("%F%P: cannot find %s\n"), entry->local_sym_name);
    }
}
