
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
typedef struct TYPE_18__ TYPE_13__ ;
typedef struct TYPE_17__ TYPE_11__ ;
typedef struct TYPE_16__ TYPE_10__ ;


struct elf_s390_link_hash_entry {int gotplt_refcount; struct elf_s390_dyn_relocs* dyn_relocs; } ;
struct elf_s390_dyn_relocs {struct elf_s390_dyn_relocs* next; TYPE_7__* sec; } ;
struct TYPE_24__ {int refcount; } ;
struct TYPE_23__ {int refcount; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_1__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_6__ plt; TYPE_5__ got; TYPE_3__ root; } ;
struct bfd_link_info {int shared; } ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_25__ {int reloc_count; } ;
typedef TYPE_7__ asection ;
struct TYPE_27__ {int r_info; } ;
struct TYPE_26__ {unsigned long sh_info; } ;
struct TYPE_22__ {int refcount; } ;
struct TYPE_18__ {TYPE_4__ tls_ldm_got; } ;
struct TYPE_17__ {int * local_dynrel; } ;
struct TYPE_16__ {TYPE_8__ symtab_hdr; } ;
typedef TYPE_8__ Elf_Internal_Shdr ;
typedef TYPE_9__ Elf_Internal_Rela ;


 unsigned long ELF32_R_SYM (int ) ;
 unsigned int ELF32_R_TYPE (int ) ;
 int TRUE ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 int* elf_local_got_refcounts (int *) ;
 TYPE_13__* elf_s390_hash_table (struct bfd_link_info*) ;
 unsigned int elf_s390_tls_transition (struct bfd_link_info*,unsigned int,int ) ;
 TYPE_11__* elf_section_data (TYPE_7__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_10__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
elf_s390_gc_sweep_hook (bfd *abfd,
   struct bfd_link_info *info,
   asection *sec,
   const Elf_Internal_Rela *relocs)
{
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  bfd_signed_vma *local_got_refcounts;
  const Elf_Internal_Rela *rel, *relend;

  elf_section_data (sec)->local_dynrel = ((void*)0);

  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  local_got_refcounts = elf_local_got_refcounts (abfd);

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; rel++)
    {
      unsigned long r_symndx;
      unsigned int r_type;
      struct elf_link_hash_entry *h = ((void*)0);

      r_symndx = ELF32_R_SYM (rel->r_info);
      if (r_symndx >= symtab_hdr->sh_info)
 {
   struct elf_s390_link_hash_entry *eh;
   struct elf_s390_dyn_relocs **pp;
   struct elf_s390_dyn_relocs *p;

   h = sym_hashes[r_symndx - symtab_hdr->sh_info];
   while (h->root.type == bfd_link_hash_indirect
   || h->root.type == bfd_link_hash_warning)
     h = (struct elf_link_hash_entry *) h->root.u.i.link;
   eh = (struct elf_s390_link_hash_entry *) h;

   for (pp = &eh->dyn_relocs; (p = *pp) != ((void*)0); pp = &p->next)
     if (p->sec == sec)
       {

  *pp = p->next;
  break;
       }
 }

      r_type = ELF32_R_TYPE (rel->r_info);
      r_type = elf_s390_tls_transition (info, r_type, h != ((void*)0));
      switch (r_type)
 {
 case 128:
   if (elf_s390_hash_table (info)->tls_ldm_got.refcount > 0)
     elf_s390_hash_table (info)->tls_ldm_got.refcount -= 1;
   break;

 case 134:
 case 130:
 case 133:
 case 132:
 case 131:
 case 129:
 case 157:
 case 156:
 case 155:
 case 154:
 case 152:
 case 151:
 case 150:
 case 149:
 case 153:
   if (h != ((void*)0))
     {
       if (h->got.refcount > 0)
  h->got.refcount -= 1;
     }
   else if (local_got_refcounts != ((void*)0))
     {
       if (local_got_refcounts[r_symndx] > 0)
  local_got_refcounts[r_symndx] -= 1;
     }
   break;

 case 158:
 case 162:
 case 161:
 case 160:
 case 159:
 case 143:
 case 142:
 case 140:
 case 141:
   if (info->shared)
     break;


 case 139:
 case 137:
 case 138:
 case 136:
 case 135:
   if (h != ((void*)0))
     {
       if (h->plt.refcount > 0)
  h->plt.refcount -= 1;
     }
   break;

 case 148:
 case 147:
 case 146:
 case 145:
 case 144:
   if (h != ((void*)0))
     {
       if (h->plt.refcount > 0)
  {
    ((struct elf_s390_link_hash_entry *) h)->gotplt_refcount--;
    h->plt.refcount -= 1;
  }
     }
   else if (local_got_refcounts != ((void*)0))
     {
       if (local_got_refcounts[r_symndx] > 0)
  local_got_refcounts[r_symndx] -= 1;
     }
   break;

 default:
   break;
 }
    }

  return TRUE;
}
