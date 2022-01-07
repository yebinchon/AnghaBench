
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct mips_got_info {unsigned int global_gotno; unsigned int local_gotno; unsigned int assigned_gotno; unsigned int tls_gotno; int got_entries; struct mips_got_info* next; } ;
struct mips_elf_set_global_got_offset_arg {scalar_t__ needed; struct bfd_link_info* info; scalar_t__ needed_relocs; struct mips_got_info* g; int value; } ;
struct mips_elf_link_hash_table {scalar_t__ function_stub_size; scalar_t__ compact_rel_size; TYPE_2__* splt; scalar_t__ is_vxworks; TYPE_2__* sgotplt; int use_rld_obj_head; } ;
struct mips_elf_count_tls_arg {scalar_t__ needed; struct bfd_link_info* info; scalar_t__ needed_relocs; struct mips_got_info* g; int value; } ;
struct bfd_link_info {int flags; scalar_t__ executable; scalar_t__ shared; scalar_t__ combreloc; } ;
typedef int bfd_byte ;
typedef scalar_t__ bfd_boolean ;
struct TYPE_20__ {TYPE_2__* sections; } ;
typedef TYPE_1__ bfd ;
struct TYPE_21__ {scalar_t__ size; int flags; int * contents; scalar_t__ reloc_count; struct TYPE_21__* output_section; struct TYPE_21__* next; } ;
typedef TYPE_2__ asection ;
struct TYPE_22__ {scalar_t__ dynamic_sections_created; TYPE_1__* dynobj; } ;


 int BFD_ASSERT (int) ;
 scalar_t__ CONST_STRNEQ (char const*,char*) ;
 int DF_TEXTREL ;
 int DT_DEBUG ;
 int DT_JMPREL ;
 int DT_MIPS_BASE_ADDRESS ;
 int DT_MIPS_FLAGS ;
 int DT_MIPS_GOTSYM ;
 int DT_MIPS_HIPAGENO ;
 int DT_MIPS_LOCAL_GOTNO ;
 int DT_MIPS_OPTIONS ;
 int DT_MIPS_RLD_MAP ;
 int DT_MIPS_RLD_VERSION ;
 int DT_MIPS_SYMTABNO ;
 int DT_MIPS_UNREFEXTNO ;
 int DT_PLTGOT ;
 int DT_PLTREL ;
 int DT_PLTRELSZ ;
 int DT_REL ;
 int DT_RELA ;
 int DT_RELAENT ;
 int DT_RELASZ ;
 int DT_RELENT ;
 int DT_RELSZ ;
 int DT_TEXTREL ;
 scalar_t__ ELF_DYNAMIC_INTERPRETER (TYPE_1__*) ;
 scalar_t__ FALSE ;
 scalar_t__ IRIX_COMPAT (TYPE_1__*) ;
 int MIPS_ELF_ADD_DYNAMIC_ENTRY (struct bfd_link_info*,int ,int ) ;
 int MIPS_ELF_GOT_SIZE (TYPE_1__*) ;
 char const* MIPS_ELF_OPTIONS_SECTION_NAME (TYPE_1__*) ;
 char* MIPS_ELF_REL_DYN_NAME (struct bfd_link_info*) ;
 scalar_t__ MIPS_ELF_RLD_MAP_SIZE (TYPE_1__*) ;
 char* MIPS_ELF_STUB_SECTION_NAME (TYPE_1__*) ;
 unsigned int MIPS_RESERVED_GOTNO (struct bfd_link_info*) ;
 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 int SEC_HAS_CONTENTS ;
 int SEC_LINKER_CREATED ;
 int SEC_READONLY ;
 scalar_t__ SGI_COMPAT (TYPE_1__*) ;
 scalar_t__ TRUE ;
 int bfd_error_no_memory ;
 TYPE_2__* bfd_get_section_by_name (TYPE_1__*,char const*) ;
 char* bfd_get_section_name (TYPE_1__*,TYPE_2__*) ;
 int bfd_set_error (int ) ;
 void* bfd_zalloc (TYPE_1__*,scalar_t__) ;
 TYPE_5__* elf_hash_table (struct bfd_link_info*) ;
 int elf_link_hash_traverse (TYPE_5__*,int ,struct mips_elf_set_global_got_offset_arg*) ;
 int htab_traverse (int ,int ,struct mips_elf_set_global_got_offset_arg*) ;
 scalar_t__ ict_irix5 ;
 scalar_t__ ict_irix6 ;
 int mips_elf_allocate_dynamic_relocations (TYPE_1__*,struct bfd_link_info*,unsigned int) ;
 int mips_elf_count_global_tls_relocs ;
 int mips_elf_count_local_tls_relocs ;
 struct mips_got_info* mips_elf_got_info (TYPE_1__*,int *) ;
 struct mips_elf_link_hash_table* mips_elf_hash_table (struct bfd_link_info*) ;
 scalar_t__ mips_elf_rel_dyn_section (struct bfd_link_info*,scalar_t__) ;
 int mips_elf_resolve_final_got_entries (struct mips_got_info*) ;
 int mips_elf_set_global_got_offset ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strlen (scalar_t__) ;

bfd_boolean
_bfd_mips_elf_size_dynamic_sections (bfd *output_bfd,
         struct bfd_link_info *info)
{
  bfd *dynobj;
  asection *s, *sreldyn;
  bfd_boolean reltext;
  struct mips_elf_link_hash_table *htab;

  htab = mips_elf_hash_table (info);
  dynobj = elf_hash_table (info)->dynobj;
  BFD_ASSERT (dynobj != ((void*)0));

  if (elf_hash_table (info)->dynamic_sections_created)
    {

      if (info->executable)
 {
   s = bfd_get_section_by_name (dynobj, ".interp");
   BFD_ASSERT (s != ((void*)0));
   s->size
     = strlen (ELF_DYNAMIC_INTERPRETER (output_bfd)) + 1;
   s->contents
     = (bfd_byte *) ELF_DYNAMIC_INTERPRETER (output_bfd);
 }
    }




  reltext = FALSE;
  sreldyn = ((void*)0);
  for (s = dynobj->sections; s != ((void*)0); s = s->next)
    {
      const char *name;



      name = bfd_get_section_name (dynobj, s);

      if ((s->flags & SEC_LINKER_CREATED) == 0)
 continue;

      if (CONST_STRNEQ (name, ".rel"))
 {
   if (s->size != 0)
     {
       const char *outname;
       asection *target;







       outname = bfd_get_section_name (output_bfd,
           s->output_section);
       target = bfd_get_section_by_name (output_bfd, outname + 4);
       if ((target != ((void*)0)
     && (target->flags & SEC_READONLY) != 0
     && (target->flags & SEC_ALLOC) != 0)
    || strcmp (outname, MIPS_ELF_REL_DYN_NAME (info)) == 0)
  reltext = TRUE;



       if (strcmp (name, MIPS_ELF_REL_DYN_NAME (info)) != 0)
  s->reloc_count = 0;







       info->combreloc = 0;
     }
 }
      else if (htab->is_vxworks && strcmp (name, ".got") == 0)
 {

   if (info->shared)
     {

       struct mips_got_info *g;
       unsigned int count;

       g = mips_elf_got_info (dynobj, ((void*)0));
       count = (g->global_gotno
         + g->local_gotno
         - MIPS_RESERVED_GOTNO (info));
       mips_elf_allocate_dynamic_relocations (dynobj, info, count);
     }
 }
      else if (!htab->is_vxworks && CONST_STRNEQ (name, ".got"))
 {




   struct mips_got_info *gg = mips_elf_got_info (dynobj, ((void*)0));
   struct mips_got_info *g = gg;
   struct mips_elf_set_global_got_offset_arg set_got_offset_arg;
   unsigned int needed_relocs = 0;

   if (gg->next)
     {
       set_got_offset_arg.value = MIPS_ELF_GOT_SIZE (output_bfd);
       set_got_offset_arg.info = info;




       mips_elf_resolve_final_got_entries (gg);
       for (g = gg->next; g && g->next != gg; g = g->next)
  {
    unsigned int save_assign;

    mips_elf_resolve_final_got_entries (g);


    save_assign = g->assigned_gotno;
    g->assigned_gotno = g->local_gotno;
    set_got_offset_arg.g = g;
    set_got_offset_arg.needed_relocs = 0;
    htab_traverse (g->got_entries,
     mips_elf_set_global_got_offset,
     &set_got_offset_arg);
    needed_relocs += set_got_offset_arg.needed_relocs;
    BFD_ASSERT (g->assigned_gotno - g->local_gotno
         <= g->global_gotno);

    g->assigned_gotno = save_assign;
    if (info->shared)
      {
        needed_relocs += g->local_gotno - g->assigned_gotno;
        BFD_ASSERT (g->assigned_gotno == g->next->local_gotno
      + g->next->global_gotno
      + g->next->tls_gotno
      + MIPS_RESERVED_GOTNO (info));
      }
  }
     }
   else
     {
       struct mips_elf_count_tls_arg arg;
       arg.info = info;
       arg.needed = 0;

       htab_traverse (gg->got_entries, mips_elf_count_local_tls_relocs,
        &arg);
       elf_link_hash_traverse (elf_hash_table (info),
          mips_elf_count_global_tls_relocs,
          &arg);

       needed_relocs += arg.needed;
     }

   if (needed_relocs)
     mips_elf_allocate_dynamic_relocations (dynobj, info,
         needed_relocs);
 }
      else if (strcmp (name, MIPS_ELF_STUB_SECTION_NAME (output_bfd)) == 0)
 {


   s->size += htab->function_stub_size;
 }
      else if (! info->shared
        && ! mips_elf_hash_table (info)->use_rld_obj_head
        && CONST_STRNEQ (name, ".rld_map"))
 {


   s->size += MIPS_ELF_RLD_MAP_SIZE (output_bfd);
 }
      else if (SGI_COMPAT (output_bfd)
        && CONST_STRNEQ (name, ".compact_rel"))
 s->size += mips_elf_hash_table (info)->compact_rel_size;
      else if (! CONST_STRNEQ (name, ".init")
        && s != htab->sgotplt
        && s != htab->splt)
 {

   continue;
 }

      if (s->size == 0)
 {
   s->flags |= SEC_EXCLUDE;
   continue;
 }

      if ((s->flags & SEC_HAS_CONTENTS) == 0)
 continue;



      if (strcmp (name, MIPS_ELF_REL_DYN_NAME (info)) == 0)
 {
   sreldyn = s;
   continue;
 }


      s->contents = bfd_zalloc (dynobj, s->size);
      if (s->contents == ((void*)0))
 {
   bfd_set_error (bfd_error_no_memory);
   return FALSE;
 }
    }


  if (sreldyn != ((void*)0))
    {
      sreldyn->contents = bfd_zalloc (dynobj, sreldyn->size);
      if (sreldyn->contents == ((void*)0))
 {
   bfd_set_error (bfd_error_no_memory);
   return FALSE;
 }
    }

  if (elf_hash_table (info)->dynamic_sections_created)
    {
      if (!info->shared
   && !MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_RLD_MAP, 0))
 return FALSE;



      if (info->executable
   && !SGI_COMPAT (output_bfd)
   && !MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_DEBUG, 0))
 return FALSE;

      if (reltext && (SGI_COMPAT (output_bfd) || htab->is_vxworks))
 info->flags |= DF_TEXTREL;

      if ((info->flags & DF_TEXTREL) != 0)
 {
   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_TEXTREL, 0))
     return FALSE;





   info->flags &= ~DF_TEXTREL;
 }

      if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_PLTGOT, 0))
 return FALSE;

      if (htab->is_vxworks)
 {


   if (mips_elf_rel_dyn_section (info, FALSE))
     {
       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_RELA, 0))
  return FALSE;

       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_RELASZ, 0))
  return FALSE;

       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_RELAENT, 0))
  return FALSE;
     }
   if (htab->splt->size > 0)
     {
       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_PLTREL, 0))
  return FALSE;

       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_JMPREL, 0))
  return FALSE;

       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_PLTRELSZ, 0))
  return FALSE;
     }
 }
      else
 {
   if (mips_elf_rel_dyn_section (info, FALSE))
     {
       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_REL, 0))
  return FALSE;

       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_RELSZ, 0))
  return FALSE;

       if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_RELENT, 0))
  return FALSE;
     }

   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_RLD_VERSION, 0))
     return FALSE;

   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_FLAGS, 0))
     return FALSE;

   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_BASE_ADDRESS, 0))
     return FALSE;

   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_LOCAL_GOTNO, 0))
     return FALSE;

   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_SYMTABNO, 0))
     return FALSE;

   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_UNREFEXTNO, 0))
     return FALSE;

   if (! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_GOTSYM, 0))
     return FALSE;

   if (IRIX_COMPAT (dynobj) == ict_irix5
       && ! MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_HIPAGENO, 0))
     return FALSE;

   if (IRIX_COMPAT (dynobj) == ict_irix6
       && (bfd_get_section_by_name
    (dynobj, MIPS_ELF_OPTIONS_SECTION_NAME (dynobj)))
       && !MIPS_ELF_ADD_DYNAMIC_ENTRY (info, DT_MIPS_OPTIONS, 0))
     return FALSE;
 }
    }

  return TRUE;
}
