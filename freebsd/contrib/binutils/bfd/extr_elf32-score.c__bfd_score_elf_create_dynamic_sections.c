
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct elf_link_hash_entry {int def_regular; int type; scalar_t__ non_elf; } ;
struct bfd_link_info {int shared; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int flagword ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_4__ {int dynobj; } ;
struct TYPE_3__ {int collect; } ;


 int BSF_GLOBAL ;
 int FALSE ;
 char* SCORE_ELF_STUB_SECTION_NAME ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int STT_SECTION ;
 int TRUE ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,int *,char const*,int ,int ,int ,char const*,int ,int ,struct bfd_link_hash_entry**) ;
 int bfd_abs_section_ptr ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int * bfd_get_section_by_name (int *,char*) ;
 int * bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int) ;
 int bfd_set_section_flags (int *,int *,int) ;
 TYPE_2__* elf_hash_table (struct bfd_link_info*) ;
 TYPE_1__* get_elf_backend_data (int *) ;
 int score_elf_create_got_section (int *,struct bfd_link_info*,int ) ;
 int score_elf_rel_dyn_section (int ,int ) ;

__attribute__((used)) static bfd_boolean
_bfd_score_elf_create_dynamic_sections (bfd *abfd, struct bfd_link_info *info)
{
  struct elf_link_hash_entry *h;
  struct bfd_link_hash_entry *bh;
  flagword flags;
  asection *s;

  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
           | SEC_LINKER_CREATED | SEC_READONLY);


  s = bfd_get_section_by_name (abfd, ".dynamic");
  if (s != ((void*)0))
    {
      if (!bfd_set_section_flags (abfd, s, flags))
        return FALSE;
    }


  if (!score_elf_create_got_section (abfd, info, FALSE))
    return FALSE;

  if (!score_elf_rel_dyn_section (elf_hash_table (info)->dynobj, TRUE))
    return FALSE;


  if (bfd_get_section_by_name (abfd, SCORE_ELF_STUB_SECTION_NAME) == ((void*)0))
    {
      s = bfd_make_section_with_flags (abfd, SCORE_ELF_STUB_SECTION_NAME,
                                       flags | SEC_CODE);
      if (s == ((void*)0)
          || !bfd_set_section_alignment (abfd, s, 2))

        return FALSE;
    }

  if (!info->shared)
    {
      const char *name;

      name = "_DYNAMIC_LINK";
      bh = ((void*)0);
      if (!(_bfd_generic_link_add_one_symbol
            (info, abfd, name, BSF_GLOBAL, bfd_abs_section_ptr,
             (bfd_vma) 0, (const char *)((void*)0), FALSE, get_elf_backend_data (abfd)->collect, &bh)))
        return FALSE;

      h = (struct elf_link_hash_entry *)bh;
      h->non_elf = 0;
      h->def_regular = 1;
      h->type = STT_SECTION;

      if (!bfd_elf_link_record_dynamic_symbol (info, h))
        return FALSE;
    }

  return TRUE;
}
