
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct elf_link_hash_entry {int dummy; } ;
struct elf_backend_data {int dynamic_sec_flags; TYPE_1__* s; scalar_t__ default_use_rela_p; scalar_t__ want_dynbss; scalar_t__ want_plt_sym; int plt_alignment; scalar_t__ plt_readonly; scalar_t__ plt_not_loaded; } ;
struct bfd_link_info {int shared; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_4__ {struct elf_link_hash_entry* hplt; } ;
struct TYPE_3__ {int log_file_align; } ;


 int FALSE ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TRUE ;
 int _bfd_elf_create_got_section (int *,struct bfd_link_info*) ;
 struct elf_link_hash_entry* _bfd_elf_define_linkage_sym (int *,struct bfd_link_info*,int *,char*) ;
 int * bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int ) ;
 TYPE_2__* elf_hash_table (struct bfd_link_info*) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;

bfd_boolean
_bfd_elf_create_dynamic_sections (bfd *abfd, struct bfd_link_info *info)
{
  flagword flags, pltflags;
  struct elf_link_hash_entry *h;
  asection *s;
  const struct elf_backend_data *bed = get_elf_backend_data (abfd);



  flags = bed->dynamic_sec_flags;

  pltflags = flags;
  if (bed->plt_not_loaded)



    pltflags &= ~ (SEC_CODE | SEC_LOAD | SEC_HAS_CONTENTS);
  else
    pltflags |= SEC_ALLOC | SEC_CODE | SEC_LOAD;
  if (bed->plt_readonly)
    pltflags |= SEC_READONLY;

  s = bfd_make_section_with_flags (abfd, ".plt", pltflags);
  if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, bed->plt_alignment))
    return FALSE;



  if (bed->want_plt_sym)
    {
      h = _bfd_elf_define_linkage_sym (abfd, info, s,
           "_PROCEDURE_LINKAGE_TABLE_");
      elf_hash_table (info)->hplt = h;
      if (h == ((void*)0))
 return FALSE;
    }

  s = bfd_make_section_with_flags (abfd,
       (bed->default_use_rela_p
        ? ".rela.plt" : ".rel.plt"),
       flags | SEC_READONLY);
  if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
    return FALSE;

  if (! _bfd_elf_create_got_section (abfd, info))
    return FALSE;

  if (bed->want_dynbss)
    {






      s = bfd_make_section_with_flags (abfd, ".dynbss",
           (SEC_ALLOC
     | SEC_LINKER_CREATED));
      if (s == ((void*)0))
 return FALSE;
      if (! info->shared)
 {
   s = bfd_make_section_with_flags (abfd,
        (bed->default_use_rela_p
         ? ".rela.bss" : ".rel.bss"),
        flags | SEC_READONLY);
   if (s == ((void*)0)
       || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
     return FALSE;
 }
    }

  return TRUE;
}
