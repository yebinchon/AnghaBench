
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_52__ TYPE_9__ ;
typedef struct TYPE_51__ TYPE_8__ ;
typedef struct TYPE_50__ TYPE_7__ ;
typedef struct TYPE_49__ TYPE_6__ ;
typedef struct TYPE_48__ TYPE_5__ ;
typedef struct TYPE_47__ TYPE_4__ ;
typedef struct TYPE_46__ TYPE_3__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_23__ ;
typedef struct TYPE_43__ TYPE_22__ ;
typedef struct TYPE_42__ TYPE_20__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_19__ ;
typedef struct TYPE_39__ TYPE_16__ ;
typedef struct TYPE_38__ TYPE_15__ ;
typedef struct TYPE_37__ TYPE_14__ ;
typedef struct TYPE_36__ TYPE_13__ ;


struct TYPE_43__ {int * dynobj; struct elf_link_hash_entry* hgot; } ;
struct ppc_elf_link_hash_table {TYPE_22__ elf; int sym_sec; int * old_bfd; void* plt_type; TYPE_16__* sdata; int * got; } ;
struct ppc_elf_dyn_relocs {int count; int pc_count; TYPE_7__* sec; struct ppc_elf_dyn_relocs* next; } ;
struct TYPE_47__ {char* string; } ;
struct TYPE_41__ {scalar_t__ link; } ;
struct TYPE_45__ {TYPE_1__ i; } ;
struct TYPE_48__ {scalar_t__ type; TYPE_4__ root; TYPE_2__ u; } ;
struct TYPE_46__ {int refcount; } ;
struct elf_link_hash_entry {int non_got_ref; int needs_plt; TYPE_5__ root; int def_regular; TYPE_3__ got; } ;
struct bfd_link_info {int shared; int symbolic; int pie; int flags; int executable; scalar_t__ relocatable; } ;
typedef int flagword ;
typedef enum elf_ppc_reloc_type { ____Placeholder_elf_ppc_reloc_type } elf_ppc_reloc_type ;
typedef int bfd_vma ;
typedef void* bfd_boolean ;
typedef int bfd ;
struct TYPE_50__ {int flags; int reloc_count; int has_tls_get_addr_call; int has_tls_reloc; } ;
typedef TYPE_7__ asection ;
struct TYPE_52__ {int r_addend; scalar_t__ r_offset; int r_info; } ;
struct TYPE_51__ {unsigned long sh_info; } ;
struct TYPE_49__ {int sh_name; } ;
struct TYPE_44__ {int e_shstrndx; } ;
struct TYPE_42__ {int local_dynrel; TYPE_7__* sreloc; TYPE_6__ rel_hdr; } ;
struct TYPE_40__ {TYPE_8__ symtab_hdr; } ;
struct TYPE_39__ {int * sym; int * section; } ;
struct TYPE_38__ {int tls_mask; struct ppc_elf_dyn_relocs* dyn_relocs; void* has_sda_refs; } ;
struct TYPE_37__ {int name; } ;
struct TYPE_36__ {int makes_plt_call; int has_rel16; } ;
typedef TYPE_8__ Elf_Internal_Shdr ;
typedef TYPE_9__ Elf_Internal_Rela ;


 int BFD_ASSERT (int) ;
 int CONST_STRNEQ (char const*,char*) ;
 int DF_STATIC_TLS ;
 unsigned long ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int ELIMINATE_COPY_RELOCS ;
 void* FALSE ;
 void* PLT_OLD ;
 void* PLT_UNSET ;
 int SEC_ALLOC ;
 int SEC_CODE ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_LINKER_CREATED ;
 int SEC_LOAD ;
 int SEC_READONLY ;
 int TLS_DTPREL ;
 int TLS_GD ;
 int TLS_LD ;
 int TLS_TLS ;
 int TLS_TPREL ;
 void* TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,TYPE_7__*,long,int ) ;
 int bad_shared_reloc (int *,int) ;
 struct ppc_elf_dyn_relocs* bfd_alloc (int *,int) ;
 int bfd_elf_gc_record_vtentry (int *,TYPE_7__*,struct elf_link_hash_entry*,int ) ;
 int bfd_elf_gc_record_vtinherit (int *,TYPE_7__*,struct elf_link_hash_entry*,scalar_t__) ;
 char* bfd_elf_string_from_elf_section (int *,int ,int ) ;
 int bfd_error_bad_value ;
 TYPE_7__* bfd_get_section_by_name (int *,char const*) ;
 char* bfd_get_section_name (int *,TYPE_7__*) ;
 scalar_t__ bfd_link_hash_defweak ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 TYPE_7__* bfd_make_section_with_flags (int *,char const*,int) ;
 TYPE_7__* bfd_section_from_r_symndx (int *,int *,TYPE_7__*,unsigned long) ;
 int bfd_set_error (int ) ;
 int bfd_set_section_alignment (int *,TYPE_7__*,int) ;
 int create_sdata_sym (struct ppc_elf_link_hash_table*,TYPE_16__*) ;
 int elf_create_pointer_linker_section (int *,TYPE_16__*,struct elf_link_hash_entry*,TYPE_9__ const*) ;
 TYPE_23__* elf_elfheader (int *) ;
 struct elf_link_hash_entry* elf_link_hash_lookup (TYPE_22__*,char*,void*,void*,void*) ;
 TYPE_20__* elf_section_data (TYPE_7__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_19__* elf_tdata (int *) ;
 int fprintf (int ,char*,...) ;
 int must_be_dyn_reloc (struct bfd_link_info*,int) ;
 int ppc_elf_create_got (int *,struct bfd_link_info*) ;
 int ppc_elf_create_linker_section (int *,struct bfd_link_info*,int,TYPE_16__*) ;
 TYPE_15__* ppc_elf_hash_entry (struct elf_link_hash_entry*) ;
 struct ppc_elf_link_hash_table* ppc_elf_hash_table (struct bfd_link_info*) ;
 int ppc_elf_howto_init () ;
 TYPE_14__** ppc_elf_howto_table ;
 TYPE_13__* ppc_elf_tdata (int *) ;
 int stderr ;
 scalar_t__ strcmp (char*,char const*) ;
 int stub1 (int ,int *,TYPE_7__*,long,int ) ;
 int update_local_sym_info (int *,TYPE_8__*,unsigned long,int) ;
 int update_plt_info (int *,struct elf_link_hash_entry*,TYPE_7__*,int ) ;

__attribute__((used)) static bfd_boolean
ppc_elf_check_relocs (bfd *abfd,
        struct bfd_link_info *info,
        asection *sec,
        const Elf_Internal_Rela *relocs)
{
  struct ppc_elf_link_hash_table *htab;
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  const Elf_Internal_Rela *rel;
  const Elf_Internal_Rela *rel_end;
  asection *got2, *sreloc;
  struct elf_link_hash_entry *tga;

  if (info->relocatable)
    return TRUE;







  if ((sec->flags & SEC_ALLOC) == 0)
    return TRUE;







  if (!ppc_elf_howto_table[210])
    ppc_elf_howto_init ();

  htab = ppc_elf_hash_table (info);
  tga = elf_link_hash_lookup (&htab->elf, "__tls_get_addr",
         FALSE, FALSE, TRUE);
  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  got2 = bfd_get_section_by_name (abfd, ".got2");
  sreloc = ((void*)0);

  rel_end = relocs + sec->reloc_count;
  for (rel = relocs; rel < rel_end; rel++)
    {
      unsigned long r_symndx;
      enum elf_ppc_reloc_type r_type;
      struct elf_link_hash_entry *h;
      int tls_type;

      r_symndx = ELF32_R_SYM (rel->r_info);
      if (r_symndx < symtab_hdr->sh_info)
 h = ((void*)0);
      else
 {
   h = sym_hashes[r_symndx - symtab_hdr->sh_info];
   while (h->root.type == bfd_link_hash_indirect
   || h->root.type == bfd_link_hash_warning)
     h = (struct elf_link_hash_entry *) h->root.u.i.link;
 }




      if (h != ((void*)0)
   && htab->got == ((void*)0)
   && strcmp (h->root.root.string, "_GLOBAL_OFFSET_TABLE_") == 0)
 {
   if (htab->elf.dynobj == ((void*)0))
     htab->elf.dynobj = abfd;
   if (!ppc_elf_create_got (htab->elf.dynobj, info))
     return FALSE;
   BFD_ASSERT (h == htab->elf.hgot);
 }

      tls_type = 0;
      r_type = ELF32_R_TYPE (rel->r_info);
      if (h != ((void*)0) && h == tga)
 switch (r_type)
   {
   default:
     break;

   case 156:
   case 162:
   case 147:
   case 154:
   case 152:
   case 153:
   case 212:
   case 219:
   case 217:
   case 218:
     if (rel != relocs
  && (ELF32_R_TYPE (rel[-1].r_info) == 138
      || ELF32_R_TYPE (rel[-1].r_info) == 137))


       ;
     else

       sec->has_tls_get_addr_call = 1;
     break;
   }

      switch (r_type)
 {
 case 138:
 case 137:


   break;

 case 171:
 case 168:
 case 169:
 case 170:
   tls_type = TLS_TLS | TLS_LD;
   goto dogottls;

 case 175:
 case 172:
 case 173:
 case 174:
   tls_type = TLS_TLS | TLS_GD;
   goto dogottls;

 case 167:
 case 164:
 case 165:
 case 166:
   if (!info->executable)
     info->flags |= DF_STATIC_TLS;
   tls_type = TLS_TLS | TLS_TPREL;
   goto dogottls;

 case 179:
 case 176:
 case 177:
 case 178:
   tls_type = TLS_TLS | TLS_DTPREL;
 dogottls:
   sec->has_tls_reloc = 1;



 case 183:
 case 180:
 case 181:
 case 182:

   if (htab->got == ((void*)0))
     {
       if (htab->elf.dynobj == ((void*)0))
  htab->elf.dynobj = abfd;
       if (!ppc_elf_create_got (htab->elf.dynobj, info))
  return FALSE;
     }
   if (h != ((void*)0))
     {
       h->got.refcount += 1;
       ppc_elf_hash_entry (h)->tls_mask |= tls_type;
     }
   else

     if (!update_local_sym_info (abfd, symtab_hdr, r_symndx, tls_type))
       return FALSE;
   break;


 case 187:
   if (info->shared)
     {
       bad_shared_reloc (abfd, r_type);
       return FALSE;
     }
   if (htab->sdata[0].section == ((void*)0)
       && !ppc_elf_create_linker_section (abfd, info, 0,
       &htab->sdata[0]))
     return FALSE;
   if (!elf_create_pointer_linker_section (abfd, &htab->sdata[0],
        h, rel))
     return FALSE;
   if (h != ((void*)0))
     {
       ppc_elf_hash_entry (h)->has_sda_refs = TRUE;
       h->non_got_ref = TRUE;
     }
   break;


 case 189:
   if (info->shared)
     {
       bad_shared_reloc (abfd, r_type);
       return FALSE;
     }
   if (htab->sdata[1].section == ((void*)0)
       && !ppc_elf_create_linker_section (abfd, info, SEC_READONLY,
       &htab->sdata[1]))
     return FALSE;
   if (!elf_create_pointer_linker_section (abfd, &htab->sdata[1],
        h, rel))
     return FALSE;
   if (h != ((void*)0))
     {
       ppc_elf_hash_entry (h)->has_sda_refs = TRUE;
       h->non_got_ref = TRUE;
     }
   break;

 case 144:
   if (info->shared)
     {
       bad_shared_reloc (abfd, r_type);
       return FALSE;
     }
   if (htab->sdata[0].sym == ((void*)0)
       && !create_sdata_sym (htab, &htab->sdata[0]))
     return FALSE;
   if (h != ((void*)0))
     {
       ppc_elf_hash_entry (h)->has_sda_refs = TRUE;
       h->non_got_ref = TRUE;
     }
   break;

 case 188:
   if (info->shared)
     {
       bad_shared_reloc (abfd, r_type);
       return FALSE;
     }
   if (htab->sdata[1].sym == ((void*)0)
       && !create_sdata_sym (htab, &htab->sdata[1]))
     return FALSE;
   if (h != ((void*)0))
     {
       ppc_elf_hash_entry (h)->has_sda_refs = TRUE;
       h->non_got_ref = TRUE;
     }
   break;

 case 190:
 case 195:
   if (info->shared)
     {
       bad_shared_reloc (abfd, r_type);
       return FALSE;
     }
   if (htab->sdata[0].sym == ((void*)0)
       && !create_sdata_sym (htab, &htab->sdata[0]))
     return FALSE;
   if (htab->sdata[1].sym == ((void*)0)
       && !create_sdata_sym (htab, &htab->sdata[1]))
     return FALSE;
   if (h != ((void*)0))
     {
       ppc_elf_hash_entry (h)->has_sda_refs = TRUE;
       h->non_got_ref = TRUE;
     }
   break;

 case 196:
 case 200:
 case 197:
 case 198:
 case 199:
   if (info->shared)
     {
       bad_shared_reloc (abfd, r_type);
       return FALSE;
     }
   if (h != ((void*)0))
     h->non_got_ref = TRUE;
   break;

 case 157:
 case 156:
 case 155:
 case 158:
 case 159:
 case 160:
   if (h == ((void*)0))
     {


       (*_bfd_error_handler) (_("%B(%A+0x%lx): %s reloc against "
           "local symbol"),
         abfd,
         sec,
         (long) rel->r_offset,
         ppc_elf_howto_table[r_type]->name);
       bfd_set_error (bfd_error_bad_value);
       return FALSE;
     }
   else
     {
       bfd_vma addend = 0;

       if (r_type == 156)
  {
    ppc_elf_tdata (abfd)->makes_plt_call = 1;
    addend = rel->r_addend;
  }
       h->needs_plt = 1;
       if (!update_plt_info (abfd, h, got2, addend))
  return FALSE;
     }
   break;




 case 143:
 case 140:
 case 141:
 case 142:
 case 207:
 case 204:
 case 205:
 case 206:
 case 136:
   break;

 case 151:
 case 148:
 case 149:
 case 150:
   ppc_elf_tdata (abfd)->has_rel16 = 1;
   break;


 case 139:
 case 201:
 case 161:
 case 128:
   break;


 case 209:
 case 186:
 case 163:
 case 145:
   break;


 case 211:
 case 194:
 case 191:
 case 192:
 case 193:
 case 202:
   break;


 case 162:
   if (h != ((void*)0) && h == htab->elf.hgot && htab->plt_type == PLT_UNSET)
     {
       htab->plt_type = PLT_OLD;
       htab->old_bfd = abfd;
     }
   break;



 case 184:
   if (!bfd_elf_gc_record_vtinherit (abfd, sec, h, rel->r_offset))
     return FALSE;
   break;



 case 185:
   if (!bfd_elf_gc_record_vtentry (abfd, sec, h, rel->r_addend))
     return FALSE;
   break;


 case 131:
 case 135:
 case 132:
 case 133:
 case 134:
   if (!info->executable)
     info->flags |= DF_STATIC_TLS;
   goto dodyn;


 case 208:
 case 203:
   goto dodyn;

 case 146:
   if (h == ((void*)0)
       && got2 != ((void*)0)
       && (sec->flags & SEC_CODE) != 0
       && (info->shared || info->pie)
       && htab->plt_type == PLT_UNSET)
     {






       asection *s;

       s = bfd_section_from_r_symndx (abfd, &htab->sym_sec, sec,
          r_symndx);
       if (s == got2)
  {
    htab->plt_type = PLT_OLD;
    htab->old_bfd = abfd;
  }
     }
   if (h == ((void*)0) || h == htab->elf.hgot)
     break;
   goto dodyn1;

 case 147:
 case 154:
 case 152:
 case 153:
   if (h == ((void*)0))
     break;
   if (h == htab->elf.hgot)
     {
       if (htab->plt_type == PLT_UNSET)
  {
    htab->plt_type = PLT_OLD;
    htab->old_bfd = abfd;
  }
       break;
     }


 case 210:
 case 212:
 case 216:
 case 213:
 case 214:
 case 215:
 case 219:
 case 217:
 case 218:
 case 129:
 case 130:
 dodyn1:
   if (h != ((void*)0) && !info->shared)
     {


       if (!update_plt_info (abfd, h, ((void*)0), 0))
  return FALSE;


       h->non_got_ref = 1;
     }

 dodyn:
   if ((info->shared
        && (must_be_dyn_reloc (info, r_type)
     || (h != ((void*)0)
         && (! info->symbolic
      || h->root.type == bfd_link_hash_defweak
      || !h->def_regular))))
       || (ELIMINATE_COPY_RELOCS
    && !info->shared
    && h != ((void*)0)
    && (h->root.type == bfd_link_hash_defweak
        || !h->def_regular)))
     {
       struct ppc_elf_dyn_relocs *p;
       struct ppc_elf_dyn_relocs **head;
       if (sreloc == ((void*)0))
  {
    const char *name;

    name = (bfd_elf_string_from_elf_section
     (abfd,
      elf_elfheader (abfd)->e_shstrndx,
      elf_section_data (sec)->rel_hdr.sh_name));
    if (name == ((void*)0))
      return FALSE;

    BFD_ASSERT (CONST_STRNEQ (name, ".rela")
         && strcmp (bfd_get_section_name (abfd, sec),
      name + 5) == 0);

    if (htab->elf.dynobj == ((void*)0))
      htab->elf.dynobj = abfd;
    sreloc = bfd_get_section_by_name (htab->elf.dynobj, name);
    if (sreloc == ((void*)0))
      {
        flagword flags;

        flags = (SEC_HAS_CONTENTS | SEC_READONLY
          | SEC_IN_MEMORY | SEC_LINKER_CREATED
          | SEC_ALLOC | SEC_LOAD);
        sreloc = bfd_make_section_with_flags (htab->elf.dynobj,
           name,
           flags);
        if (sreloc == ((void*)0)
     || ! bfd_set_section_alignment (htab->elf.dynobj,
         sreloc, 2))
   return FALSE;
      }
    elf_section_data (sec)->sreloc = sreloc;
  }



       if (h != ((void*)0))
  {
    head = &ppc_elf_hash_entry (h)->dyn_relocs;
  }
       else
  {




    asection *s;
    void *vpp;

    s = bfd_section_from_r_symndx (abfd, &htab->sym_sec,
       sec, r_symndx);
    if (s == ((void*)0))
      return FALSE;

    vpp = &elf_section_data (s)->local_dynrel;
    head = (struct ppc_elf_dyn_relocs **) vpp;
  }

       p = *head;
       if (p == ((void*)0) || p->sec != sec)
  {
    p = bfd_alloc (htab->elf.dynobj, sizeof *p);
    if (p == ((void*)0))
      return FALSE;
    p->next = *head;
    *head = p;
    p->sec = sec;
    p->count = 0;
    p->pc_count = 0;
  }

       p->count += 1;
       if (!must_be_dyn_reloc (info, r_type))
  p->pc_count += 1;
     }

   break;
 }
    }

  return TRUE;
}
