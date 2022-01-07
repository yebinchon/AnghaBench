
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct elf_segment_map {unsigned long p_type; unsigned int count; struct elf_segment_map* next; int sections; void* includes_phdrs; void* includes_filehdr; void* p_paddr_valid; void* p_flags_valid; int p_paddr; int p_flags; } ;
typedef int flagword ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef void* bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {struct elf_segment_map* segment_map; } ;


 void* FALSE ;
 void* TRUE ;
 scalar_t__ bfd_get_flavour (int *) ;
 scalar_t__ bfd_target_elf_flavour ;
 struct elf_segment_map* bfd_zalloc (int *,int) ;
 TYPE_1__* elf_tdata (int *) ;
 int memcpy (int ,int **,unsigned int) ;

bfd_boolean
bfd_record_phdr (bfd *abfd,
   unsigned long type,
   bfd_boolean flags_valid,
   flagword flags,
   bfd_boolean at_valid,
   bfd_vma at,
   bfd_boolean includes_filehdr,
   bfd_boolean includes_phdrs,
   unsigned int count,
   asection **secs)
{
  struct elf_segment_map *m, **pm;
  bfd_size_type amt;

  if (bfd_get_flavour (abfd) != bfd_target_elf_flavour)
    return TRUE;

  amt = sizeof (struct elf_segment_map);
  amt += ((bfd_size_type) count - 1) * sizeof (asection *);
  m = bfd_zalloc (abfd, amt);
  if (m == ((void*)0))
    return FALSE;

  m->p_type = type;
  m->p_flags = flags;
  m->p_paddr = at;
  m->p_flags_valid = flags_valid;
  m->p_paddr_valid = at_valid;
  m->includes_filehdr = includes_filehdr;
  m->includes_phdrs = includes_phdrs;
  m->count = count;
  if (count > 0)
    memcpy (m->sections, secs, count * sizeof (asection *));

  for (pm = &elf_tdata (abfd)->segment_map; *pm != ((void*)0); pm = &(*pm)->next)
    ;
  *pm = m;

  return TRUE;
}
