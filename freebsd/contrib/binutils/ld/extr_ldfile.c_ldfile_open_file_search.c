
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sysrooted; char const* name; struct TYPE_9__* next; } ;
typedef TYPE_1__ search_dirs_type ;
struct TYPE_10__ {int sysrooted; char* filename; scalar_t__ is_archive; scalar_t__ dynamic; } ;
typedef TYPE_2__ lang_input_statement_type ;
typedef int bfd_boolean ;
struct TYPE_11__ {int relocatable; } ;


 int FALSE ;
 scalar_t__ IS_ABSOLUTE_PATH (char*) ;
 int TRUE ;
 char* concat (int ,char*,char const*) ;
 int free (char*) ;
 scalar_t__ is_sysrooted_pathname (char*,int ) ;
 int ld_sysroot ;
 scalar_t__ ldemul_open_dynamic_archive (char const*,TYPE_1__*,TYPE_2__*) ;
 scalar_t__ ldfile_try_open_bfd (char*,TYPE_2__*) ;
 TYPE_4__ link_info ;
 TYPE_1__* search_head ;
 char* slash ;
 int sprintf (char*,char*,char const*,char*,char const*,...) ;
 scalar_t__ strlen (char const*) ;
 char* xmalloc (scalar_t__) ;

bfd_boolean
ldfile_open_file_search (const char *arch,
    lang_input_statement_type *entry,
    const char *lib,
    const char *suffix)
{
  search_dirs_type *search;



  if (! entry->is_archive)
    {
      if (entry->sysrooted && IS_ABSOLUTE_PATH (entry->filename))
 {
   char *name = concat (ld_sysroot, entry->filename,
          (const char *) ((void*)0));
   if (ldfile_try_open_bfd (name, entry))
     {
       entry->filename = name;
       return TRUE;
     }
   free (name);
 }
      else if (ldfile_try_open_bfd (entry->filename, entry))
 {
   entry->sysrooted = IS_ABSOLUTE_PATH (entry->filename)
     && is_sysrooted_pathname (entry->filename, TRUE);
   return TRUE;
 }

      if (IS_ABSOLUTE_PATH (entry->filename))
 return FALSE;
    }

  for (search = search_head; search != ((void*)0); search = search->next)
    {
      char *string;

      if (entry->dynamic && ! link_info.relocatable)
 {
   if (ldemul_open_dynamic_archive (arch, search, entry))
     {
       entry->sysrooted = search->sysrooted;
       return TRUE;
     }
 }

      string = xmalloc (strlen (search->name)
   + strlen (slash)
   + strlen (lib)
   + strlen (entry->filename)
   + strlen (arch)
   + strlen (suffix)
   + 1);

      if (entry->is_archive)
 sprintf (string, "%s%s%s%s%s%s", search->name, slash,
   lib, entry->filename, arch, suffix);
      else
 sprintf (string, "%s%s%s", search->name, slash, entry->filename);

      if (ldfile_try_open_bfd (string, entry))
 {
   entry->filename = string;
   entry->sysrooted = search->sysrooted;
   return TRUE;
 }

      free (string);
    }

  return FALSE;
}
