
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_75__ TYPE_9__ ;
typedef struct TYPE_74__ TYPE_8__ ;
typedef struct TYPE_73__ TYPE_7__ ;
typedef struct TYPE_72__ TYPE_6__ ;
typedef struct TYPE_71__ TYPE_5__ ;
typedef struct TYPE_70__ TYPE_4__ ;
typedef struct TYPE_69__ TYPE_3__ ;
typedef struct TYPE_68__ TYPE_37__ ;
typedef struct TYPE_67__ TYPE_35__ ;
typedef struct TYPE_66__ TYPE_32__ ;
typedef struct TYPE_65__ TYPE_2__ ;
typedef struct TYPE_64__ TYPE_1__ ;
typedef struct TYPE_63__ TYPE_17__ ;
typedef struct TYPE_62__ TYPE_13__ ;
typedef struct TYPE_61__ TYPE_12__ ;
typedef struct TYPE_60__ TYPE_11__ ;
typedef struct TYPE_59__ TYPE_10__ ;


struct mips_got_info {int dummy; } ;
struct mips_elf_link_hash_table {int compact_rel_size; scalar_t__ is_vxworks; void* mips16_stubs_seen; } ;
struct TYPE_72__ {scalar_t__ link; } ;
struct TYPE_73__ {TYPE_6__ i; } ;
struct TYPE_74__ {scalar_t__ type; TYPE_7__ u; } ;
struct TYPE_75__ {int forced_local; int def_regular; TYPE_8__ root; } ;
struct mips_elf_link_hash_entry {unsigned char tls_type; void* need_fn_stub; void* no_fn_stub; void* is_branch_target; void* readonly_reloc; int possibly_dynamic_relocs; TYPE_9__ root; void* is_relocation_target; TYPE_11__* call_stub; TYPE_11__* call_fp_stub; TYPE_11__* fn_stub; } ;
struct TYPE_69__ {scalar_t__ link; } ;
struct TYPE_70__ {TYPE_3__ i; } ;
struct TYPE_71__ {scalar_t__ type; TYPE_4__ u; } ;
struct elf_link_hash_entry {int needs_plt; int type; TYPE_5__ root; } ;
struct elf_backend_data {TYPE_2__* s; } ;
struct bfd_link_info {int flags; int shared; int symbolic; int keep_memory; scalar_t__ relocatable; } ;
typedef unsigned long bfd_size_type ;
typedef void* bfd_boolean ;
struct TYPE_59__ {TYPE_11__* sections; } ;
typedef TYPE_10__ bfd ;
struct TYPE_60__ {int flags; scalar_t__ reloc_count; struct TYPE_60__* next; } ;
typedef TYPE_11__ asection ;
struct TYPE_68__ {TYPE_10__* dynobj; } ;
struct TYPE_67__ {TYPE_13__* relocs; } ;
struct TYPE_61__ {size_t sh_info; } ;
struct TYPE_66__ {TYPE_11__** local_call_stubs; TYPE_11__** local_stubs; TYPE_12__ symtab_hdr; } ;
struct TYPE_65__ {int int_rels_per_ext_rel; } ;
struct TYPE_64__ {struct mips_got_info* got_info; } ;
struct TYPE_63__ {TYPE_1__ u; } ;
struct TYPE_62__ {scalar_t__ r_offset; int r_addend; int r_info; } ;
typedef TYPE_12__ Elf_Internal_Shdr ;
typedef TYPE_13__ Elf_Internal_Rela ;
typedef int Elf32_External_crinfo ;


 int BFD_ASSERT (int) ;
 scalar_t__ CALL_FP_STUB_P (char const*) ;
 scalar_t__ CALL_STUB_P (char const*) ;
 int DF_STATIC_TLS ;
 int DF_TEXTREL ;
 unsigned long ELF_R_SYM (TYPE_10__*,int ) ;
 unsigned int ELF_R_TYPE (TYPE_10__*,int ) ;
 void* FALSE ;
 scalar_t__ FN_STUB_P (char const*) ;
 unsigned char GOT_TLS_GD ;
 unsigned char GOT_TLS_IE ;
 unsigned char GOT_TLS_LDM ;
 scalar_t__ MIPS_ELF_READONLY_SECTION (TYPE_11__*) ;
 size_t NUM_SHDR_ENTRIES (TYPE_12__*) ;
 unsigned int R_MIPS16_26 ;
 int SEC_ALLOC ;
 int SEC_EXCLUDE ;
 int SEC_KEEP ;
 int SEC_RELOC ;
 int SGI_COMPAT (TYPE_10__*) ;
 int STT_FUNC ;
 void* TRUE ;
 int _ (char*) ;
 TYPE_13__* _bfd_elf_link_read_relocs (TYPE_10__*,TYPE_11__*,int *,int *,int ) ;
 int _bfd_error_handler (int ,TYPE_10__*,unsigned long) ;
 int bfd_elf_gc_record_vtentry (TYPE_10__*,TYPE_11__*,struct elf_link_hash_entry*,scalar_t__) ;
 int bfd_elf_gc_record_vtinherit (TYPE_10__*,TYPE_11__*,struct elf_link_hash_entry*,scalar_t__) ;
 int bfd_error_bad_value ;
 char* bfd_get_section_name (TYPE_10__*,TYPE_11__*) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int bfd_set_error (int ) ;
 TYPE_11__** bfd_zalloc (TYPE_10__*,unsigned long) ;
 scalar_t__ elf_bad_symtab (TYPE_10__*) ;
 TYPE_37__* elf_hash_table (struct bfd_link_info*) ;
 TYPE_35__* elf_section_data (TYPE_11__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (TYPE_10__*) ;
 TYPE_32__* elf_tdata (TYPE_10__*) ;
 int free (TYPE_13__*) ;
 struct elf_backend_data* get_elf_backend_data (TYPE_10__*) ;
 scalar_t__ is_gott_symbol (struct bfd_link_info*,struct elf_link_hash_entry*) ;
 scalar_t__ mips16_stub_section_p (TYPE_10__*,TYPE_11__*) ;
 int mips_elf_allocate_dynamic_relocations (TYPE_10__*,struct bfd_link_info*,int) ;
 int mips_elf_create_got_section (TYPE_10__*,struct bfd_link_info*,void*) ;
 struct mips_got_info* mips_elf_got_info (TYPE_10__*,TYPE_11__**) ;
 TYPE_11__* mips_elf_got_section (TYPE_10__*,void*) ;
 struct mips_elf_link_hash_table* mips_elf_hash_table (struct bfd_link_info*) ;
 int mips_elf_record_global_got_symbol (struct elf_link_hash_entry*,TYPE_10__*,struct bfd_link_info*,struct mips_got_info*,unsigned char) ;
 int mips_elf_record_local_got_symbol (TYPE_10__*,unsigned long,int ,struct mips_got_info*,unsigned char) ;
 TYPE_11__* mips_elf_rel_dyn_section (struct bfd_link_info*,void*) ;
 TYPE_17__* mips_elf_section_data (TYPE_11__*) ;
 int stub1 (int ,TYPE_10__*,...) ;
 int stub2 (int ,TYPE_10__*,unsigned long) ;
 int stub3 (int ,TYPE_10__*,unsigned long) ;

bfd_boolean
_bfd_mips_elf_check_relocs (bfd *abfd, struct bfd_link_info *info,
       asection *sec, const Elf_Internal_Rela *relocs)
{
  const char *name;
  bfd *dynobj;
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  struct mips_got_info *g;
  size_t extsymoff;
  const Elf_Internal_Rela *rel;
  const Elf_Internal_Rela *rel_end;
  asection *sgot;
  asection *sreloc;
  const struct elf_backend_data *bed;
  struct mips_elf_link_hash_table *htab;

  if (info->relocatable)
    return TRUE;

  htab = mips_elf_hash_table (info);
  dynobj = elf_hash_table (info)->dynobj;
  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  extsymoff = (elf_bad_symtab (abfd)) ? 0 : symtab_hdr->sh_info;



  name = bfd_get_section_name (abfd, sec);
  if (FN_STUB_P (name))
    {
      unsigned long r_symndx;




      r_symndx = ELF_R_SYM (abfd, relocs->r_info);

      if (r_symndx < extsymoff
   || sym_hashes[r_symndx - extsymoff] == ((void*)0))
 {
   asection *o;




   for (o = abfd->sections; o != ((void*)0); o = o->next)
     {
       Elf_Internal_Rela *sec_relocs;
       const Elf_Internal_Rela *r, *rend;


       if ((o->flags & SEC_RELOC) == 0
    || o->reloc_count == 0
    || mips16_stub_section_p (abfd, o))
  continue;

       sec_relocs
  = _bfd_elf_link_read_relocs (abfd, o, ((void*)0), ((void*)0),
          info->keep_memory);
       if (sec_relocs == ((void*)0))
  return FALSE;

       rend = sec_relocs + o->reloc_count;
       for (r = sec_relocs; r < rend; r++)
  if (ELF_R_SYM (abfd, r->r_info) == r_symndx
      && ELF_R_TYPE (abfd, r->r_info) != R_MIPS16_26)
    break;

       if (elf_section_data (o)->relocs != sec_relocs)
  free (sec_relocs);

       if (r < rend)
  break;
     }

   if (o == ((void*)0))
     {





       sec->flags |= SEC_EXCLUDE;
       return TRUE;
     }



   if (elf_tdata (abfd)->local_stubs == ((void*)0))
     {
       unsigned long symcount;
       asection **n;
       bfd_size_type amt;

       if (elf_bad_symtab (abfd))
  symcount = NUM_SHDR_ENTRIES (symtab_hdr);
       else
  symcount = symtab_hdr->sh_info;
       amt = symcount * sizeof (asection *);
       n = bfd_zalloc (abfd, amt);
       if (n == ((void*)0))
  return FALSE;
       elf_tdata (abfd)->local_stubs = n;
     }

   sec->flags |= SEC_KEEP;
   elf_tdata (abfd)->local_stubs[r_symndx] = sec;





 }
      else
 {
   struct mips_elf_link_hash_entry *h;

   h = ((struct mips_elf_link_hash_entry *)
        sym_hashes[r_symndx - extsymoff]);

   while (h->root.root.type == bfd_link_hash_indirect
   || h->root.root.type == bfd_link_hash_warning)
     h = (struct mips_elf_link_hash_entry *) h->root.root.u.i.link;
   if (h->fn_stub != ((void*)0))
     {
       sec->flags |= SEC_EXCLUDE;
       return TRUE;
     }

   sec->flags |= SEC_KEEP;
   h->fn_stub = sec;
   mips_elf_hash_table (info)->mips16_stubs_seen = TRUE;
 }
    }
  else if (CALL_STUB_P (name) || CALL_FP_STUB_P (name))
    {
      unsigned long r_symndx;
      struct mips_elf_link_hash_entry *h;
      asection **loc;




      r_symndx = ELF_R_SYM (abfd, relocs->r_info);

      if (r_symndx < extsymoff
   || sym_hashes[r_symndx - extsymoff] == ((void*)0))
 {
   asection *o;




   for (o = abfd->sections; o != ((void*)0); o = o->next)
     {
       Elf_Internal_Rela *sec_relocs;
       const Elf_Internal_Rela *r, *rend;


       if ((o->flags & SEC_RELOC) == 0
    || o->reloc_count == 0
    || mips16_stub_section_p (abfd, o))
  continue;

       sec_relocs
  = _bfd_elf_link_read_relocs (abfd, o, ((void*)0), ((void*)0),
          info->keep_memory);
       if (sec_relocs == ((void*)0))
  return FALSE;

       rend = sec_relocs + o->reloc_count;
       for (r = sec_relocs; r < rend; r++)
  if (ELF_R_SYM (abfd, r->r_info) == r_symndx
      && ELF_R_TYPE (abfd, r->r_info) == R_MIPS16_26)
      break;

       if (elf_section_data (o)->relocs != sec_relocs)
  free (sec_relocs);

       if (r < rend)
  break;
     }

   if (o == ((void*)0))
     {





       sec->flags |= SEC_EXCLUDE;
       return TRUE;
     }



   if (elf_tdata (abfd)->local_call_stubs == ((void*)0))
     {
       unsigned long symcount;
       asection **n;
       bfd_size_type amt;

       if (elf_bad_symtab (abfd))
  symcount = NUM_SHDR_ENTRIES (symtab_hdr);
       else
  symcount = symtab_hdr->sh_info;
       amt = symcount * sizeof (asection *);
       n = bfd_zalloc (abfd, amt);
       if (n == ((void*)0))
  return FALSE;
       elf_tdata (abfd)->local_call_stubs = n;
     }

   sec->flags |= SEC_KEEP;
   elf_tdata (abfd)->local_call_stubs[r_symndx] = sec;





 }
      else
 {
   h = ((struct mips_elf_link_hash_entry *)
        sym_hashes[r_symndx - extsymoff]);



   if (CALL_FP_STUB_P (name))
     loc = &h->call_fp_stub;
   else
     loc = &h->call_stub;






   if (*loc != ((void*)0))
     {
       sec->flags |= SEC_EXCLUDE;
       return TRUE;
     }

   sec->flags |= SEC_KEEP;
   *loc = sec;
   mips_elf_hash_table (info)->mips16_stubs_seen = TRUE;
 }
    }

  if (dynobj == ((void*)0))
    {
      sgot = ((void*)0);
      g = ((void*)0);
    }
  else
    {
      sgot = mips_elf_got_section (dynobj, FALSE);
      if (sgot == ((void*)0))
 g = ((void*)0);
      else
 {
   BFD_ASSERT (mips_elf_section_data (sgot) != ((void*)0));
   g = mips_elf_section_data (sgot)->u.got_info;
   BFD_ASSERT (g != ((void*)0));
 }
    }

  sreloc = ((void*)0);
  bed = get_elf_backend_data (abfd);
  rel_end = relocs + sec->reloc_count * bed->s->int_rels_per_ext_rel;
  for (rel = relocs; rel < rel_end; ++rel)
    {
      unsigned long r_symndx;
      unsigned int r_type;
      struct elf_link_hash_entry *h;

      r_symndx = ELF_R_SYM (abfd, rel->r_info);
      r_type = ELF_R_TYPE (abfd, rel->r_info);

      if (r_symndx < extsymoff)
 h = ((void*)0);
      else if (r_symndx >= extsymoff + NUM_SHDR_ENTRIES (symtab_hdr))
 {
   (*_bfd_error_handler)
     (_("%B: Malformed reloc detected for section %s"),
      abfd, name);
   bfd_set_error (bfd_error_bad_value);
   return FALSE;
 }
      else
 {
   h = sym_hashes[r_symndx - extsymoff];


   if (h != ((void*)0))
     {
       while (h->root.type == bfd_link_hash_indirect)
  h = (struct elf_link_hash_entry *) h->root.u.i.link;
     }
 }


      if (dynobj == ((void*)0) || sgot == ((void*)0))
 {
   switch (r_type)
     {
     case 142:
     case 147:
     case 146:
     case 145:
     case 140:
     case 139:
     case 137:
     case 138:
     case 141:
     case 129:
     case 130:
     case 128:
       if (dynobj == ((void*)0))
  elf_hash_table (info)->dynobj = dynobj = abfd;
       if (! mips_elf_create_got_section (dynobj, info, FALSE))
  return FALSE;
       g = mips_elf_got_info (dynobj, &sgot);
       if (htab->is_vxworks && !info->shared)
  {
    (*_bfd_error_handler)
      (_("%B: GOT reloc at 0x%lx not expected in executables"),
       abfd, (unsigned long) rel->r_offset);
    bfd_set_error (bfd_error_bad_value);
    return FALSE;
  }
       break;

     case 149:
     case 131:
     case 148:



       if (dynobj == ((void*)0)
    && (info->shared || (h != ((void*)0) && !htab->is_vxworks))
    && (sec->flags & SEC_ALLOC) != 0)
  elf_hash_table (info)->dynobj = dynobj = abfd;
       break;

     default:
       break;
     }
 }

      if (h)
 {
   ((struct mips_elf_link_hash_entry *) h)->is_relocation_target = TRUE;




   if (is_gott_symbol (info, h))
     {
       if (sreloc == ((void*)0))
  {
    sreloc = mips_elf_rel_dyn_section (info, TRUE);
    if (sreloc == ((void*)0))
      return FALSE;
  }
       mips_elf_allocate_dynamic_relocations (dynobj, info, 1);
       if (MIPS_ELF_READONLY_SECTION (sec))


  info->flags |= DF_TEXTREL;
     }
 }
      else if (r_type == 145
        || r_type == 139
        || r_type == 141
        || (r_type == 142 && htab->is_vxworks))
 {
   if (! mips_elf_record_local_got_symbol (abfd, r_symndx,
        rel->r_addend, g, 0))
     return FALSE;
 }

      switch (r_type)
 {
 case 147:
   if (h == ((void*)0))
     {
       (*_bfd_error_handler)
  (_("%B: CALL16 reloc at 0x%lx not against global symbol"),
   abfd, (unsigned long) rel->r_offset);
       bfd_set_error (bfd_error_bad_value);
       return FALSE;
     }


 case 146:
 case 145:
   if (h != ((void*)0))
     {



       if (!htab->is_vxworks
    && !mips_elf_record_global_got_symbol (h, abfd, info, g, 0))
  return FALSE;




       h->needs_plt = 1;
       h->type = STT_FUNC;
     }
   break;

 case 137:


   if (h == ((void*)0))
     break;
   else
     {
       struct mips_elf_link_hash_entry *hmips =
  (struct mips_elf_link_hash_entry *) h;

       while (hmips->root.root.type == bfd_link_hash_indirect
       || hmips->root.root.type == bfd_link_hash_warning)
  hmips = (struct mips_elf_link_hash_entry *)
    hmips->root.root.u.i.link;

       if (hmips->root.def_regular
    && ! (info->shared && ! info->symbolic
   && ! hmips->root.forced_local))
  break;
     }


 case 142:
 case 140:
 case 139:
 case 141:
   if (h && ! mips_elf_record_global_got_symbol (h, abfd, info, g, 0))
     return FALSE;
   break;

 case 129:
   if (info->shared)
     info->flags |= DF_STATIC_TLS;


 case 128:
   if (r_type == 128)
     {
       r_symndx = 0;
       h = ((void*)0);
     }


 case 130:


   {
     unsigned char flag = (r_type == 130
      ? GOT_TLS_GD
      : r_type == 128
      ? GOT_TLS_LDM
      : GOT_TLS_IE);
     if (h != ((void*)0))
       {
  struct mips_elf_link_hash_entry *hmips =
    (struct mips_elf_link_hash_entry *) h;
  hmips->tls_type |= flag;

  if (h && ! mips_elf_record_global_got_symbol (h, abfd, info, g, flag))
    return FALSE;
       }
     else
       {
  BFD_ASSERT (flag == GOT_TLS_LDM || r_symndx != 0);

  if (! mips_elf_record_local_got_symbol (abfd, r_symndx,
       rel->r_addend, g, flag))
    return FALSE;
       }
   }
   break;

 case 149:
 case 131:
 case 148:



   if ((info->shared || (h != ((void*)0) && !htab->is_vxworks))
       && (sec->flags & SEC_ALLOC) != 0)
     {
       if (sreloc == ((void*)0))
  {
    sreloc = mips_elf_rel_dyn_section (info, TRUE);
    if (sreloc == ((void*)0))
      return FALSE;
  }
       if (info->shared)
  {



    mips_elf_allocate_dynamic_relocations (dynobj, info, 1);
    if (MIPS_ELF_READONLY_SECTION (sec))


      info->flags |= DF_TEXTREL;
  }
       else
  {
    struct mips_elf_link_hash_entry *hmips;



    hmips = (struct mips_elf_link_hash_entry *) h;
    ++hmips->possibly_dynamic_relocs;
    if (MIPS_ELF_READONLY_SECTION (sec))


      hmips->readonly_reloc = TRUE;
  }







       if (h != ((void*)0) && !htab->is_vxworks)
  {
    if (dynobj == ((void*)0))
      elf_hash_table (info)->dynobj = dynobj = abfd;
    if (! mips_elf_create_got_section (dynobj, info, TRUE))
      return FALSE;
    g = mips_elf_got_info (dynobj, &sgot);
    if (! mips_elf_record_global_got_symbol (h, abfd, info, g, 0))
      return FALSE;
  }
     }

   if (SGI_COMPAT (abfd))
     mips_elf_hash_table (info)->compact_rel_size +=
       sizeof (Elf32_External_crinfo);
   break;

 case 132:
   if (h)
     ((struct mips_elf_link_hash_entry *) h)->is_branch_target = TRUE;
   break;

 case 150:
   if (h)
     ((struct mips_elf_link_hash_entry *) h)->is_branch_target = TRUE;


 case 136:
 case 133:
 case 135:
   if (SGI_COMPAT (abfd))
     mips_elf_hash_table (info)->compact_rel_size +=
       sizeof (Elf32_External_crinfo);
   break;



 case 143:
   if (!bfd_elf_gc_record_vtinherit (abfd, sec, h, rel->r_offset))
     return FALSE;
   break;



 case 144:
   if (!bfd_elf_gc_record_vtentry (abfd, sec, h, rel->r_offset))
     return FALSE;
   break;

 default:
   break;
 }





      if (!htab->is_vxworks && h != ((void*)0))
 switch (r_type)
   {
   default:
     ((struct mips_elf_link_hash_entry *) h)->no_fn_stub = TRUE;
     break;
   case 147:
   case 146:
   case 145:
   case 134:
     break;
   }




      if (h != ((void*)0)
   && r_type != R_MIPS16_26
   && !mips16_stub_section_p (abfd, sec))
 {
   struct mips_elf_link_hash_entry *mh;

   mh = (struct mips_elf_link_hash_entry *) h;
   mh->need_fn_stub = TRUE;
 }
    }

  return TRUE;
}
