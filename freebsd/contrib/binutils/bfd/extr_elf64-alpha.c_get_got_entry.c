
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct alpha_elf_link_hash_entry {struct alpha_elf_got_entry* got_entries; } ;
struct alpha_elf_got_entry {unsigned long reloc_type; scalar_t__ addend; int got_offset; int plt_offset; int use_count; struct alpha_elf_got_entry* next; scalar_t__ reloc_xlated; scalar_t__ reloc_done; int * gotobj; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd ;
struct TYPE_6__ {int total_got_size; int local_got_size; struct alpha_elf_got_entry** local_got_entries; } ;
struct TYPE_4__ {int sh_info; } ;
struct TYPE_5__ {TYPE_1__ symtab_hdr; } ;
typedef TYPE_1__ Elf_Internal_Shdr ;


 TYPE_3__* alpha_elf_tdata (int *) ;
 int alpha_got_entry_size (unsigned long) ;
 scalar_t__ bfd_alloc (int *,int) ;
 scalar_t__ bfd_zalloc (int *,int) ;
 TYPE_2__* elf_tdata (int *) ;

__attribute__((used)) static struct alpha_elf_got_entry *
get_got_entry (bfd *abfd, struct alpha_elf_link_hash_entry *h,
        unsigned long r_type, unsigned long r_symndx,
        bfd_vma r_addend)
{
  struct alpha_elf_got_entry *gotent;
  struct alpha_elf_got_entry **slot;

  if (h)
    slot = &h->got_entries;
  else
    {


      struct alpha_elf_got_entry **local_got_entries;

      local_got_entries = alpha_elf_tdata(abfd)->local_got_entries;
      if (!local_got_entries)
 {
   bfd_size_type size;
   Elf_Internal_Shdr *symtab_hdr;

   symtab_hdr = &elf_tdata(abfd)->symtab_hdr;
   size = symtab_hdr->sh_info;
   size *= sizeof (struct alpha_elf_got_entry *);

   local_got_entries
     = (struct alpha_elf_got_entry **) bfd_zalloc (abfd, size);
   if (!local_got_entries)
     return ((void*)0);

   alpha_elf_tdata (abfd)->local_got_entries = local_got_entries;
 }

      slot = &local_got_entries[r_symndx];
    }

  for (gotent = *slot; gotent ; gotent = gotent->next)
    if (gotent->gotobj == abfd
 && gotent->reloc_type == r_type
 && gotent->addend == r_addend)
      break;

  if (!gotent)
    {
      int entry_size;
      bfd_size_type amt;

      amt = sizeof (struct alpha_elf_got_entry);
      gotent = (struct alpha_elf_got_entry *) bfd_alloc (abfd, amt);
      if (!gotent)
 return ((void*)0);

      gotent->gotobj = abfd;
      gotent->addend = r_addend;
      gotent->got_offset = -1;
      gotent->plt_offset = -1;
      gotent->use_count = 1;
      gotent->reloc_type = r_type;
      gotent->reloc_done = 0;
      gotent->reloc_xlated = 0;

      gotent->next = *slot;
      *slot = gotent;

      entry_size = alpha_got_entry_size (r_type);
      alpha_elf_tdata (abfd)->total_got_size += entry_size;
      if (!h)
 alpha_elf_tdata(abfd)->local_got_size += entry_size;
    }
  else
    gotent->use_count += 1;

  return gotent;
}
