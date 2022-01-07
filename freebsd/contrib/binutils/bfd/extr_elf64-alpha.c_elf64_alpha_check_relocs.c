
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_20__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_10__ ;


struct bfd_link_info {scalar_t__ unresolved_syms_in_shared_libs; int flags; scalar_t__ shared; int symbolic; scalar_t__ relocatable; } ;
struct alpha_elf_reloc_entry {unsigned long rtype; int count; int reltext; struct alpha_elf_reloc_entry* next; TYPE_6__* srel; } ;
struct TYPE_24__ {scalar_t__ link; } ;
struct TYPE_26__ {TYPE_1__ i; } ;
struct TYPE_27__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_28__ {int ref_regular; int needs_plt; TYPE_3__ root; int def_regular; } ;
struct alpha_elf_link_hash_entry {unsigned int flags; struct alpha_elf_reloc_entry* reloc_entries; TYPE_4__ root; } ;
struct alpha_elf_got_entry {unsigned int flags; } ;
typedef int flagword ;
typedef int bfd_vma ;
typedef int bfd_size_type ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_30__ {int flags; int reloc_count; int size; } ;
typedef TYPE_6__ asection ;
struct TYPE_31__ {unsigned long sh_info; } ;
struct TYPE_33__ {TYPE_7__ symtab_hdr; } ;
struct TYPE_32__ {int r_addend; int r_info; } ;
struct TYPE_29__ {int sh_name; } ;
struct TYPE_25__ {int * gotobj; } ;
struct TYPE_23__ {int e_shstrndx; } ;
struct TYPE_22__ {int * dynobj; } ;
struct TYPE_21__ {TYPE_5__ rel_hdr; } ;
typedef TYPE_7__ Elf_Internal_Shdr ;
typedef TYPE_8__ Elf_Internal_Rela ;
typedef int Elf64_External_Rela ;


 unsigned int ALPHA_ELF_LINK_HASH_LU_ADDR ;
 unsigned int ALPHA_ELF_LINK_HASH_TLS_IE ;
 int BFD_ASSERT (int) ;
 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int DF_STATIC_TLS ;
 int DF_TEXTREL ;
 unsigned long ELF64_R_SYM (int ) ;
 unsigned long ELF64_R_TYPE (int ) ;
 scalar_t__ FALSE ;
 scalar_t__ RM_IGNORE ;
 unsigned long R_ALPHA_LITUSE ;





 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 scalar_t__ TRUE ;
 struct alpha_elf_link_hash_entry** alpha_elf_sym_hashes (int *) ;
 TYPE_20__* alpha_elf_tdata (int *) ;
 scalar_t__ bfd_alloc (int *,int) ;
 char* bfd_elf_string_from_elf_section (int *,int ,int ) ;
 TYPE_6__* bfd_get_section_by_name (int *,char const*) ;
 int bfd_get_section_name (int *,TYPE_6__*) ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 TYPE_6__* bfd_make_section_with_flags (int *,char const*,int) ;
 int bfd_set_section_alignment (int *,TYPE_6__*,int) ;
 int elf64_alpha_create_got_section (int *,struct bfd_link_info*) ;
 scalar_t__ elf64_alpha_want_plt (struct alpha_elf_link_hash_entry*) ;
 TYPE_13__* elf_elfheader (int *) ;
 TYPE_12__* elf_hash_table (struct bfd_link_info*) ;
 TYPE_10__* elf_section_data (TYPE_6__*) ;
 TYPE_9__* elf_tdata (int *) ;
 struct alpha_elf_got_entry* get_got_entry (int *,struct alpha_elf_link_hash_entry*,unsigned long,unsigned long,int) ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static bfd_boolean
elf64_alpha_check_relocs (bfd *abfd, struct bfd_link_info *info,
     asection *sec, const Elf_Internal_Rela *relocs)
{
  bfd *dynobj;
  asection *sreloc;
  const char *rel_sec_name;
  Elf_Internal_Shdr *symtab_hdr;
  struct alpha_elf_link_hash_entry **sym_hashes;
  const Elf_Internal_Rela *rel, *relend;
  bfd_size_type amt;

  if (info->relocatable)
    return TRUE;







  if ((sec->flags & SEC_ALLOC) == 0)
    return TRUE;

  dynobj = elf_hash_table(info)->dynobj;
  if (dynobj == ((void*)0))
    elf_hash_table(info)->dynobj = dynobj = abfd;

  sreloc = ((void*)0);
  rel_sec_name = ((void*)0);
  symtab_hdr = &elf_tdata(abfd)->symtab_hdr;
  sym_hashes = alpha_elf_sym_hashes(abfd);

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; ++rel)
    {
      enum {
 NEED_GOT = 1,
 NEED_GOT_ENTRY = 2,
 NEED_DYNREL = 4
      };

      unsigned long r_symndx, r_type;
      struct alpha_elf_link_hash_entry *h;
      unsigned int gotent_flags;
      bfd_boolean maybe_dynamic;
      unsigned int need;
      bfd_vma addend;

      r_symndx = ELF64_R_SYM (rel->r_info);
      if (r_symndx < symtab_hdr->sh_info)
 h = ((void*)0);
      else
 {
   h = sym_hashes[r_symndx - symtab_hdr->sh_info];

   while (h->root.root.type == bfd_link_hash_indirect
   || h->root.root.type == bfd_link_hash_warning)
     h = (struct alpha_elf_link_hash_entry *)h->root.root.u.i.link;

   h->root.ref_regular = 1;
 }





      maybe_dynamic = FALSE;
      if (h && ((info->shared
   && (!info->symbolic
       || info->unresolved_syms_in_shared_libs == RM_IGNORE))
  || !h->root.def_regular
  || h->root.root.type == bfd_link_hash_defweak))
        maybe_dynamic = TRUE;

      need = 0;
      gotent_flags = 0;
      r_type = ELF64_R_TYPE (rel->r_info);
      addend = rel->r_addend;

      switch (r_type)
 {
 case 133:
   need = NEED_GOT | NEED_GOT_ENTRY;




   while (++rel < relend && ELF64_R_TYPE (rel->r_info) == R_ALPHA_LITUSE)
     if (rel->r_addend >= 1 && rel->r_addend <= 6)
       gotent_flags |= 1 << rel->r_addend;
   --rel;


   if (gotent_flags == 0)
     gotent_flags = ALPHA_ELF_LINK_HASH_LU_ADDR;
   break;

 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 141:
   need = NEED_GOT;
   break;

 case 132:
 case 131:
   if (info->shared || maybe_dynamic)
     need = NEED_DYNREL;
   break;

 case 129:


   r_symndx = 0;
   h = 0;
   maybe_dynamic = FALSE;


 case 130:
 case 140:
   need = NEED_GOT | NEED_GOT_ENTRY;
   break;

 case 139:
   need = NEED_GOT | NEED_GOT_ENTRY;
   gotent_flags = ALPHA_ELF_LINK_HASH_TLS_IE;
   if (info->shared)
     info->flags |= DF_STATIC_TLS;
   break;

 case 128:
   if (info->shared || maybe_dynamic)
     need = NEED_DYNREL;
   if (info->shared)
     info->flags |= DF_STATIC_TLS;
   break;
 }

      if (need & NEED_GOT)
 {
   if (alpha_elf_tdata(abfd)->gotobj == ((void*)0))
     {
       if (!elf64_alpha_create_got_section (abfd, info))
  return FALSE;
     }
 }

      if (need & NEED_GOT_ENTRY)
 {
   struct alpha_elf_got_entry *gotent;

   gotent = get_got_entry (abfd, h, r_type, r_symndx, addend);
   if (!gotent)
     return FALSE;

   if (gotent_flags)
     {
       gotent->flags |= gotent_flags;
       if (h)
  {
    gotent_flags |= h->flags;
    h->flags = gotent_flags;






    h->root.needs_plt
      = (maybe_dynamic && elf64_alpha_want_plt (h));
  }
     }
 }

      if (need & NEED_DYNREL)
 {
   if (rel_sec_name == ((void*)0))
     {
       rel_sec_name = (bfd_elf_string_from_elf_section
         (abfd, elf_elfheader(abfd)->e_shstrndx,
          elf_section_data(sec)->rel_hdr.sh_name));
       if (rel_sec_name == ((void*)0))
  return FALSE;

       BFD_ASSERT (CONST_STRNEQ (rel_sec_name, ".rela")
     && strcmp (bfd_get_section_name (abfd, sec),
         rel_sec_name+5) == 0);
     }





   if (sreloc == ((void*)0))
     {
       sreloc = bfd_get_section_by_name (dynobj, rel_sec_name);
       if (sreloc == ((void*)0))
  {
    flagword flags;

    flags = (SEC_HAS_CONTENTS | SEC_IN_MEMORY
      | SEC_LINKER_CREATED | SEC_READONLY);
    if (sec->flags & SEC_ALLOC)
      flags |= SEC_ALLOC | SEC_LOAD;
    sreloc = bfd_make_section_with_flags (dynobj,
       rel_sec_name,
       flags);
    if (sreloc == ((void*)0)
        || !bfd_set_section_alignment (dynobj, sreloc, 3))
      return FALSE;
  }
     }

   if (h)
     {






       struct alpha_elf_reloc_entry *rent;

       for (rent = h->reloc_entries; rent; rent = rent->next)
  if (rent->rtype == r_type && rent->srel == sreloc)
    break;

       if (!rent)
  {
    amt = sizeof (struct alpha_elf_reloc_entry);
    rent = (struct alpha_elf_reloc_entry *) bfd_alloc (abfd, amt);
    if (!rent)
      return FALSE;

    rent->srel = sreloc;
    rent->rtype = r_type;
    rent->count = 1;
    rent->reltext = (sec->flags & SEC_READONLY) != 0;

    rent->next = h->reloc_entries;
    h->reloc_entries = rent;
  }
       else
  rent->count++;
     }
   else if (info->shared)
     {


       sreloc->size += sizeof (Elf64_External_Rela);
       if (sec->flags & SEC_READONLY)
  info->flags |= DF_TEXTREL;
     }
 }
    }

  return TRUE;
}
