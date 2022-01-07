
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_12__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct TYPE_25__ {int refcount; } ;
struct TYPE_23__ {int string; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_1__ i; } ;
struct TYPE_24__ {scalar_t__ type; TYPE_5__ root; TYPE_2__ u; } ;
struct TYPE_22__ {int refcount; } ;
struct elf_link_hash_entry {TYPE_7__ plt; TYPE_6__ root; TYPE_4__ got; } ;
struct bfd_link_info {int shared; } ;
struct TYPE_21__ {int refcount; } ;
struct _bfd_sparc_elf_link_hash_table {TYPE_3__ tls_ldm_got; } ;
struct _bfd_sparc_elf_link_hash_entry {struct _bfd_sparc_elf_dyn_relocs* dyn_relocs; } ;
struct _bfd_sparc_elf_dyn_relocs {struct _bfd_sparc_elf_dyn_relocs* next; TYPE_8__* sec; } ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_26__ {int reloc_count; } ;
typedef TYPE_8__ asection ;
struct TYPE_27__ {unsigned long sh_info; } ;
struct TYPE_18__ {int * local_dynrel; } ;
struct TYPE_17__ {TYPE_9__ symtab_hdr; } ;
struct TYPE_16__ {int r_info; } ;
typedef TYPE_9__ Elf_Internal_Shdr ;
typedef TYPE_10__ Elf_Internal_Rela ;
 unsigned long SPARC_ELF_R_SYMNDX (struct _bfd_sparc_elf_link_hash_table*,int ) ;
 unsigned int SPARC_ELF_R_TYPE (int ) ;
 int TRUE ;
 struct _bfd_sparc_elf_link_hash_table* _bfd_sparc_elf_hash_table (struct bfd_link_info*) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int * elf_local_got_refcounts (int *) ;
 TYPE_12__* elf_section_data (TYPE_8__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_11__* elf_tdata (int *) ;
 unsigned int sparc_elf_tls_transition (struct bfd_link_info*,int *,unsigned int,int ) ;
 int strcmp (int ,char*) ;

bfd_boolean
_bfd_sparc_elf_gc_sweep_hook (bfd *abfd, struct bfd_link_info *info,
         asection *sec, const Elf_Internal_Rela *relocs)
{
  struct _bfd_sparc_elf_link_hash_table *htab;
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  bfd_signed_vma *local_got_refcounts;
  const Elf_Internal_Rela *rel, *relend;

  elf_section_data (sec)->local_dynrel = ((void*)0);

  htab = _bfd_sparc_elf_hash_table (info);
  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  local_got_refcounts = elf_local_got_refcounts (abfd);

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; rel++)
    {
      unsigned long r_symndx;
      unsigned int r_type;
      struct elf_link_hash_entry *h = ((void*)0);

      r_symndx = SPARC_ELF_R_SYMNDX (htab, rel->r_info);
      if (r_symndx >= symtab_hdr->sh_info)
 {
   struct _bfd_sparc_elf_link_hash_entry *eh;
   struct _bfd_sparc_elf_dyn_relocs **pp;
   struct _bfd_sparc_elf_dyn_relocs *p;

   h = sym_hashes[r_symndx - symtab_hdr->sh_info];
   while (h->root.type == bfd_link_hash_indirect
   || h->root.type == bfd_link_hash_warning)
     h = (struct elf_link_hash_entry *) h->root.u.i.link;
   eh = (struct _bfd_sparc_elf_link_hash_entry *) h;
   for (pp = &eh->dyn_relocs; (p = *pp) != ((void*)0); pp = &p->next)
     if (p->sec == sec)
       {

  *pp = p->next;
  break;
       }
 }

      r_type = SPARC_ELF_R_TYPE (rel->r_info);
      r_type = sparc_elf_tls_transition (info, abfd, r_type, h != ((void*)0));
      switch (r_type)
 {
 case 137:
 case 136:
   if (_bfd_sparc_elf_hash_table (info)->tls_ldm_got.refcount > 0)
     _bfd_sparc_elf_hash_table (info)->tls_ldm_got.refcount -= 1;
   break;

 case 141:
 case 140:
 case 139:
 case 138:
 case 161:
 case 160:
 case 159:
   if (h != ((void*)0))
     {
       if (h->got.refcount > 0)
  h->got.refcount--;
     }
   else
     {
       if (local_got_refcounts[r_symndx] > 0)
  local_got_refcounts[r_symndx]--;
     }
   break;

 case 147:
 case 146:
 case 145:
 case 144:
 case 143:
   if (h != ((void*)0)
       && strcmp (h->root.root.string, "_GLOBAL_OFFSET_TABLE_") == 0)
     break;


 case 162:
 case 165:
 case 164:
 case 163:
 case 129:
 case 130:
 case 131:
 case 132:
 case 166:
 case 173:
 case 171:
 case 156:
 case 172:
 case 174:
 case 151:
 case 135:
 case 134:
 case 142:
 case 176:
 case 175:
 case 168:
 case 148:
 case 157:
 case 154:
 case 152:
 case 167:
 case 170:
 case 169:
 case 155:
 case 150:
 case 158:
 case 149:
 case 153:
 case 133:
   if (info->shared)
     break;


 case 128:
   if (h != ((void*)0))
     {
       if (h->plt.refcount > 0)
  h->plt.refcount--;
     }
   break;

 default:
   break;
 }
    }

  return TRUE;
}
