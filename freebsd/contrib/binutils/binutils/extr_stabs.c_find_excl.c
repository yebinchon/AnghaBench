
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_types {int dummy; } ;
struct stab_handle {int files; struct stab_types** file_types; struct bincl_file* bincl_list; } ;
struct bincl_file {scalar_t__ hash; struct stab_types* file_types; int name; struct bincl_file* next; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_boolean ;


 int TRUE ;
 int _ (char*) ;
 scalar_t__ strcmp (int ,char const*) ;
 int warn_stab (char const*,int ) ;
 scalar_t__ xrealloc (struct stab_types**,int) ;

__attribute__((used)) static bfd_boolean
find_excl (struct stab_handle *info, const char *name, bfd_vma hash)
{
  struct bincl_file *l;

  ++info->files;
  info->file_types = ((struct stab_types **)
        xrealloc (info->file_types,
    (info->files
     * sizeof *info->file_types)));

  for (l = info->bincl_list; l != ((void*)0); l = l->next)
    if (l->hash == hash && strcmp (l->name, name) == 0)
      break;
  if (l == ((void*)0))
    {
      warn_stab (name, _("Undefined N_EXCL"));
      info->file_types[info->files - 1] = ((void*)0);
      return TRUE;
    }

  info->file_types[info->files - 1] = l->file_types;

  return TRUE;
}
