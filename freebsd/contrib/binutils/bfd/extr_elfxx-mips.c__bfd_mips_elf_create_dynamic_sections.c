
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mips_elf_link_hash_table {int plt_header_size; int plt_entry_size; int srelplt2; int * splt; int * srelplt; int * srelbss; int * sdynbss; scalar_t__ is_vxworks; int use_rld_obj_head; } ;
struct elf_link_hash_entry {int def_regular; void* type; scalar_t__ non_elf; } ;
struct bfd_link_info {scalar_t__ shared; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef int flagword ;
typedef int bfd_boolean ;
typedef int bfd ;
typedef int asection ;
struct TYPE_2__ {int collect; } ;


 int ARRAY_SIZE (int ) ;
 int BFD_ASSERT (int ) ;
 int BSF_GLOBAL ;
 int FALSE ;
 scalar_t__ IRIX_COMPAT (int *) ;
 int MIPS_ELF_LOG_FILE_ALIGN (int *) ;
 char* MIPS_ELF_STUB_SECTION_NAME (int *) ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 scalar_t__ SGI_COMPAT (int *) ;
 void* STT_OBJECT ;
 void* STT_SECTION ;
 int TRUE ;
 int _bfd_elf_create_dynamic_sections (int *,struct bfd_link_info*) ;
 int _bfd_generic_link_add_one_symbol (struct bfd_link_info*,int *,char const*,int ,int *,int ,int *,int ,int ,struct bfd_link_hash_entry**) ;
 int abort () ;
 int * bfd_abs_section_ptr ;
 int bfd_elf_link_record_dynamic_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 int * bfd_get_section_by_name (int *,char*) ;
 int * bfd_make_section_with_flags (int *,char*,int) ;
 int bfd_set_section_alignment (int *,int *,int ) ;
 int bfd_set_section_flags (int *,int *,int) ;
 int * bfd_und_section_ptr ;
 int elf_vxworks_create_dynamic_sections (int *,struct bfd_link_info*,int *) ;
 TYPE_1__* get_elf_backend_data (int *) ;
 scalar_t__ ict_irix5 ;
 scalar_t__ ict_none ;
 int mips_elf_create_compact_rel_section (int *,struct bfd_link_info*) ;
 int mips_elf_create_got_section (int *,struct bfd_link_info*,int ) ;
 char** mips_elf_dynsym_rtproc_names ;
 struct mips_elf_link_hash_table* mips_elf_hash_table (struct bfd_link_info*) ;
 int mips_elf_rel_dyn_section (struct bfd_link_info*,int ) ;
 int mips_vxworks_exec_plt0_entry ;
 int mips_vxworks_exec_plt_entry ;
 int mips_vxworks_shared_plt0_entry ;
 int mips_vxworks_shared_plt_entry ;

bfd_boolean
_bfd_mips_elf_create_dynamic_sections (bfd *abfd, struct bfd_link_info *info)
{
  struct elf_link_hash_entry *h;
  struct bfd_link_hash_entry *bh;
  flagword flags;
  register asection *s;
  const char * const *namep;
  struct mips_elf_link_hash_table *htab;

  htab = mips_elf_hash_table (info);
  flags = (SEC_ALLOC | SEC_LOAD | SEC_HAS_CONTENTS | SEC_IN_MEMORY
    | SEC_LINKER_CREATED | SEC_READONLY);



  if (!htab->is_vxworks)
    {
      s = bfd_get_section_by_name (abfd, ".dynamic");
      if (s != ((void*)0))
 {
   if (! bfd_set_section_flags (abfd, s, flags))
     return FALSE;
 }
    }


  if (! mips_elf_create_got_section (abfd, info, FALSE))
    return FALSE;

  if (! mips_elf_rel_dyn_section (info, TRUE))
    return FALSE;


  if (bfd_get_section_by_name (abfd,
          MIPS_ELF_STUB_SECTION_NAME (abfd)) == ((void*)0))
    {
      s = bfd_make_section_with_flags (abfd,
           MIPS_ELF_STUB_SECTION_NAME (abfd),
           flags | SEC_CODE);
      if (s == ((void*)0)
   || ! bfd_set_section_alignment (abfd, s,
       MIPS_ELF_LOG_FILE_ALIGN (abfd)))
 return FALSE;
    }

  if ((IRIX_COMPAT (abfd) == ict_irix5 || IRIX_COMPAT (abfd) == ict_none)
      && !info->shared
      && bfd_get_section_by_name (abfd, ".rld_map") == ((void*)0))
    {
      s = bfd_make_section_with_flags (abfd, ".rld_map",
           flags &~ (flagword) SEC_READONLY);
      if (s == ((void*)0)
   || ! bfd_set_section_alignment (abfd, s,
       MIPS_ELF_LOG_FILE_ALIGN (abfd)))
 return FALSE;
    }





  if (IRIX_COMPAT (abfd) == ict_irix5)
    {
      for (namep = mips_elf_dynsym_rtproc_names; *namep != ((void*)0); namep++)
 {
   bh = ((void*)0);
   if (! (_bfd_generic_link_add_one_symbol
   (info, abfd, *namep, BSF_GLOBAL, bfd_und_section_ptr, 0,
    ((void*)0), FALSE, get_elf_backend_data (abfd)->collect, &bh)))
     return FALSE;

   h = (struct elf_link_hash_entry *) bh;
   h->non_elf = 0;
   h->def_regular = 1;
   h->type = STT_SECTION;

   if (! bfd_elf_link_record_dynamic_symbol (info, h))
     return FALSE;
 }


      if (SGI_COMPAT (abfd))
 {
   if (!mips_elf_create_compact_rel_section (abfd, info))
     return FALSE;
 }


      s = bfd_get_section_by_name (abfd, ".hash");
      if (s != ((void*)0))
 bfd_set_section_alignment (abfd, s, MIPS_ELF_LOG_FILE_ALIGN (abfd));
      s = bfd_get_section_by_name (abfd, ".dynsym");
      if (s != ((void*)0))
 bfd_set_section_alignment (abfd, s, MIPS_ELF_LOG_FILE_ALIGN (abfd));
      s = bfd_get_section_by_name (abfd, ".dynstr");
      if (s != ((void*)0))
 bfd_set_section_alignment (abfd, s, MIPS_ELF_LOG_FILE_ALIGN (abfd));
      s = bfd_get_section_by_name (abfd, ".reginfo");
      if (s != ((void*)0))
 bfd_set_section_alignment (abfd, s, MIPS_ELF_LOG_FILE_ALIGN (abfd));
      s = bfd_get_section_by_name (abfd, ".dynamic");
      if (s != ((void*)0))
 bfd_set_section_alignment (abfd, s, MIPS_ELF_LOG_FILE_ALIGN (abfd));
    }

  if (!info->shared)
    {
      const char *name;

      name = SGI_COMPAT (abfd) ? "_DYNAMIC_LINK" : "_DYNAMIC_LINKING";
      bh = ((void*)0);
      if (!(_bfd_generic_link_add_one_symbol
     (info, abfd, name, BSF_GLOBAL, bfd_abs_section_ptr, 0,
      ((void*)0), FALSE, get_elf_backend_data (abfd)->collect, &bh)))
 return FALSE;

      h = (struct elf_link_hash_entry *) bh;
      h->non_elf = 0;
      h->def_regular = 1;
      h->type = STT_SECTION;

      if (! bfd_elf_link_record_dynamic_symbol (info, h))
 return FALSE;

      if (! mips_elf_hash_table (info)->use_rld_obj_head)
 {




   s = bfd_get_section_by_name (abfd, ".rld_map");
   BFD_ASSERT (s != ((void*)0));

   name = SGI_COMPAT (abfd) ? "__rld_map" : "__RLD_MAP";
   bh = ((void*)0);
   if (!(_bfd_generic_link_add_one_symbol
  (info, abfd, name, BSF_GLOBAL, s, 0, ((void*)0), FALSE,
   get_elf_backend_data (abfd)->collect, &bh)))
     return FALSE;

   h = (struct elf_link_hash_entry *) bh;
   h->non_elf = 0;
   h->def_regular = 1;
   h->type = STT_OBJECT;

   if (! bfd_elf_link_record_dynamic_symbol (info, h))
     return FALSE;
 }
    }

  if (htab->is_vxworks)
    {


      if (!_bfd_elf_create_dynamic_sections (abfd, info))
 return FALSE;


      htab->sdynbss = bfd_get_section_by_name (abfd, ".dynbss");
      htab->srelbss = bfd_get_section_by_name (abfd, ".rela.bss");
      htab->srelplt = bfd_get_section_by_name (abfd, ".rela.plt");
      htab->splt = bfd_get_section_by_name (abfd, ".plt");
      if (!htab->sdynbss
   || (!htab->srelbss && !info->shared)
   || !htab->srelplt
   || !htab->splt)
 abort ();


      if (!elf_vxworks_create_dynamic_sections (abfd, info, &htab->srelplt2))
 return FALSE;


      if (info->shared)
 {
   htab->plt_header_size
     = 4 * ARRAY_SIZE (mips_vxworks_shared_plt0_entry);
   htab->plt_entry_size
     = 4 * ARRAY_SIZE (mips_vxworks_shared_plt_entry);
 }
      else
 {
   htab->plt_header_size
     = 4 * ARRAY_SIZE (mips_vxworks_exec_plt0_entry);
   htab->plt_entry_size
     = 4 * ARRAY_SIZE (mips_vxworks_exec_plt_entry);
 }
    }

  return TRUE;
}
