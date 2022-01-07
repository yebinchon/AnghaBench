
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfNN_ia64_dyn_sym_info {struct elfNN_ia64_dyn_reloc_entry* reloc_entries; } ;
struct elfNN_ia64_dyn_reloc_entry {int type; scalar_t__ count; int reltext; int * srel; struct elfNN_ia64_dyn_reloc_entry* next; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;


 int FALSE ;
 int TRUE ;
 scalar_t__ bfd_alloc (int *,int ) ;

__attribute__((used)) static bfd_boolean
count_dyn_reloc (bfd *abfd, struct elfNN_ia64_dyn_sym_info *dyn_i,
   asection *srel, int type, bfd_boolean reltext)
{
  struct elfNN_ia64_dyn_reloc_entry *rent;

  for (rent = dyn_i->reloc_entries; rent; rent = rent->next)
    if (rent->srel == srel && rent->type == type)
      break;

  if (!rent)
    {
      rent = ((struct elfNN_ia64_dyn_reloc_entry *)
       bfd_alloc (abfd, (bfd_size_type) sizeof (*rent)));
      if (!rent)
 return FALSE;

      rent->next = dyn_i->reloc_entries;
      rent->srel = srel;
      rent->type = type;
      rent->count = 0;
      dyn_i->reloc_entries = rent;
    }
  rent->reltext = reltext;
  rent->count++;

  return TRUE;
}
