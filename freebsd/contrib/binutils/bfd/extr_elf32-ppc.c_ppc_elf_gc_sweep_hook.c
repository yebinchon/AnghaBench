
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
typedef struct TYPE_18__ TYPE_14__ ;
typedef struct TYPE_17__ TYPE_13__ ;


struct TYPE_23__ {struct elf_link_hash_entry* hgot; } ;
struct ppc_elf_link_hash_table {TYPE_5__ elf; } ;
struct ppc_elf_link_hash_entry {struct ppc_elf_dyn_relocs* dyn_relocs; } ;
struct ppc_elf_dyn_relocs {struct ppc_elf_dyn_relocs* next; TYPE_7__* sec; } ;
struct TYPE_24__ {int refcount; } ;
struct plt_entry {TYPE_6__ plt; } ;
struct TYPE_22__ {int refcount; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_1__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_4__ got; TYPE_3__ root; } ;
struct bfd_link_info {int shared; } ;
typedef enum elf_ppc_reloc_type { ____Placeholder_elf_ppc_reloc_type } elf_ppc_reloc_type ;
typedef int bfd_vma ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_25__ {int flags; int reloc_count; } ;
typedef TYPE_7__ asection ;
struct TYPE_27__ {int r_addend; int r_info; } ;
struct TYPE_26__ {unsigned long sh_info; } ;
struct TYPE_18__ {int * local_dynrel; } ;
struct TYPE_17__ {TYPE_8__ symtab_hdr; } ;
typedef TYPE_8__ Elf_Internal_Shdr ;
typedef TYPE_9__ Elf_Internal_Rela ;


 unsigned long ELF32_R_SYM (int ) ;
 int ELF32_R_TYPE (int ) ;
 int SEC_ALLOC ;
 int TRUE ;
 TYPE_7__* bfd_get_section_by_name (int *,char*) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int * elf_local_got_refcounts (int *) ;
 TYPE_14__* elf_section_data (TYPE_7__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_13__* elf_tdata (int *) ;
 struct plt_entry* find_plt_ent (struct elf_link_hash_entry*,TYPE_7__*,int ) ;
 struct ppc_elf_link_hash_table* ppc_elf_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
ppc_elf_gc_sweep_hook (bfd *abfd,
         struct bfd_link_info *info,
         asection *sec,
         const Elf_Internal_Rela *relocs)
{
  struct ppc_elf_link_hash_table *htab;
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  bfd_signed_vma *local_got_refcounts;
  const Elf_Internal_Rela *rel, *relend;
  asection *got2;

  if ((sec->flags & SEC_ALLOC) == 0)
    return TRUE;

  elf_section_data (sec)->local_dynrel = ((void*)0);

  htab = ppc_elf_hash_table (info);
  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  local_got_refcounts = elf_local_got_refcounts (abfd);
  got2 = bfd_get_section_by_name (abfd, ".got2");

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; rel++)
    {
      unsigned long r_symndx;
      enum elf_ppc_reloc_type r_type;
      struct elf_link_hash_entry *h = ((void*)0);

      r_symndx = ELF32_R_SYM (rel->r_info);
      if (r_symndx >= symtab_hdr->sh_info)
 {
   struct ppc_elf_dyn_relocs **pp, *p;
   struct ppc_elf_link_hash_entry *eh;

   h = sym_hashes[r_symndx - symtab_hdr->sh_info];
   while (h->root.type == bfd_link_hash_indirect
   || h->root.type == bfd_link_hash_warning)
     h = (struct elf_link_hash_entry *) h->root.u.i.link;
   eh = (struct ppc_elf_link_hash_entry *) h;

   for (pp = &eh->dyn_relocs; (p = *pp) != ((void*)0); pp = &p->next)
     if (p->sec == sec)
       {

  *pp = p->next;
  break;
       }
 }

      r_type = ELF32_R_TYPE (rel->r_info);
      switch (r_type)
 {
 case 148:
 case 145:
 case 146:
 case 147:
 case 152:
 case 149:
 case 150:
 case 151:
 case 144:
 case 141:
 case 142:
 case 143:
 case 156:
 case 153:
 case 154:
 case 155:
 case 160:
 case 157:
 case 158:
 case 159:
   if (h != ((void*)0))
     {
       if (h->got.refcount > 0)
  h->got.refcount--;
     }
   else if (local_got_refcounts != ((void*)0))
     {
       if (local_got_refcounts[r_symndx] > 0)
  local_got_refcounts[r_symndx]--;
     }
   break;

 case 131:
 case 134:
 case 132:
 case 133:
 case 130:
   if (h == ((void*)0) || h == htab->elf.hgot)
     break;


 case 161:
 case 162:
 case 166:
 case 163:
 case 164:
 case 165:
 case 169:
 case 167:
 case 168:
 case 128:
 case 129:
   if (info->shared)
     break;

 case 137:
 case 136:
 case 135:
 case 138:
 case 139:
 case 140:
   if (h != ((void*)0))
     {
       bfd_vma addend = r_type == 136 ? rel->r_addend : 0;
       struct plt_entry *ent = find_plt_ent (h, got2, addend);
       if (ent->plt.refcount > 0)
  ent->plt.refcount -= 1;
     }
   break;

 default:
   break;
 }
    }
  return TRUE;
}
