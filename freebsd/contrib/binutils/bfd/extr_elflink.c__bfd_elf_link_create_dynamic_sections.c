
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct elf_backend_data {int dynamic_sec_flags; int (* elf_backend_create_dynamic_sections ) (int *,struct bfd_link_info*) ;TYPE_1__* s; } ;
struct bfd_link_info {scalar_t__ emit_gnu_hash; scalar_t__ emit_hash; scalar_t__ executable; int hash; } ;
typedef int flagword ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_8__ {scalar_t__ dynamic_sections_created; int * dynobj; } ;
struct TYPE_6__ {int sh_entsize; } ;
struct TYPE_7__ {TYPE_2__ this_hdr; } ;
struct TYPE_5__ {int log_file_align; int sizeof_hash_entry; int arch_size; } ;


 scalar_t__ FALSE ;
 int SEC_READONLY ;
 scalar_t__ TRUE ;
 int _bfd_elf_define_linkage_sym (int *,struct bfd_link_info*,int *,char*) ;
 int _bfd_elf_link_create_dynstrtab (int *,struct bfd_link_info*) ;
 int * bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 TYPE_4__* elf_hash_table (struct bfd_link_info*) ;
 TYPE_3__* elf_section_data (int *) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int is_elf_hash_table (int ) ;
 int stub1 (int *,struct bfd_link_info*) ;

bfd_boolean
_bfd_elf_link_create_dynamic_sections (bfd *abfd, struct bfd_link_info *info)
{
  flagword flags;
  register asection *s;
  const struct elf_backend_data *bed;

  if (! is_elf_hash_table (info->hash))
    return FALSE;

  if (elf_hash_table (info)->dynamic_sections_created)
    return TRUE;

  if (!_bfd_elf_link_create_dynstrtab (abfd, info))
    return FALSE;

  abfd = elf_hash_table (info)->dynobj;
  bed = get_elf_backend_data (abfd);

  flags = bed->dynamic_sec_flags;



  if (info->executable)
    {
      s = bfd_make_section_with_flags (abfd, ".interp",
           flags | SEC_READONLY);
      if (s == ((void*)0))
 return FALSE;
    }



  s = bfd_make_section_with_flags (abfd, ".gnu.version_d",
       flags | SEC_READONLY);
  if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
    return FALSE;

  s = bfd_make_section_with_flags (abfd, ".gnu.version",
       flags | SEC_READONLY);
  if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, 1))
    return FALSE;

  s = bfd_make_section_with_flags (abfd, ".gnu.version_r",
       flags | SEC_READONLY);
  if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
    return FALSE;

  s = bfd_make_section_with_flags (abfd, ".dynsym",
       flags | SEC_READONLY);
  if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
    return FALSE;

  s = bfd_make_section_with_flags (abfd, ".dynstr",
       flags | SEC_READONLY);
  if (s == ((void*)0))
    return FALSE;

  s = bfd_make_section_with_flags (abfd, ".dynamic", flags);
  if (s == ((void*)0)
      || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
    return FALSE;







  if (!_bfd_elf_define_linkage_sym (abfd, info, s, "_DYNAMIC"))
    return FALSE;

  if (info->emit_hash)
    {
      s = bfd_make_section_with_flags (abfd, ".hash", flags | SEC_READONLY);
      if (s == ((void*)0)
   || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
 return FALSE;
      elf_section_data (s)->this_hdr.sh_entsize = bed->s->sizeof_hash_entry;
    }

  if (info->emit_gnu_hash)
    {
      s = bfd_make_section_with_flags (abfd, ".gnu.hash",
           flags | SEC_READONLY);
      if (s == ((void*)0)
   || ! bfd_set_section_alignment (abfd, s, bed->s->log_file_align))
 return FALSE;



      if (bed->s->arch_size == 64)
 elf_section_data (s)->this_hdr.sh_entsize = 0;
      else
 elf_section_data (s)->this_hdr.sh_entsize = 4;
    }




  if (! (*bed->elf_backend_create_dynamic_sections) (abfd, info))
    return FALSE;

  elf_hash_table (info)->dynamic_sections_created = TRUE;

  return TRUE;
}
