
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_9__ ;
typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_22__ {int refcount; } ;
struct TYPE_20__ {int refcount; } ;
struct TYPE_17__ {scalar_t__ link; } ;
struct TYPE_18__ {TYPE_1__ i; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_6__ plt; TYPE_4__ got; TYPE_3__ root; } ;
struct elf32_arm_relocs_copied {int count; int pc_count; struct elf32_arm_relocs_copied* next; TYPE_7__* section; } ;
struct TYPE_21__ {int refcount; } ;
struct elf32_arm_link_hash_table {TYPE_5__ tls_ldm_got; } ;
struct elf32_arm_link_hash_entry {struct elf32_arm_relocs_copied* relocs_copied; int plt_thumb_refcount; } ;
struct bfd_link_info {int dummy; } ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_23__ {int reloc_count; } ;
typedef TYPE_7__ asection ;
struct TYPE_25__ {int r_info; } ;
struct TYPE_24__ {unsigned long sh_info; } ;
struct TYPE_16__ {int * local_dynrel; } ;
struct TYPE_15__ {TYPE_8__ symtab_hdr; } ;
typedef TYPE_8__ Elf_Internal_Shdr ;
typedef TYPE_9__ Elf_Internal_Rela ;


 unsigned long ELF32_R_SYM (int ) ;
 int const ELF32_R_TYPE (int ) ;
 int TRUE ;
 int arm_real_reloc_type (struct elf32_arm_link_hash_table*,int) ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 struct elf32_arm_link_hash_table* elf32_arm_hash_table (struct bfd_link_info*) ;
 int* elf_local_got_refcounts (int *) ;
 TYPE_11__* elf_section_data (TYPE_7__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_10__* elf_tdata (int *) ;

__attribute__((used)) static bfd_boolean
elf32_arm_gc_sweep_hook (bfd * abfd,
    struct bfd_link_info * info,
    asection * sec,
    const Elf_Internal_Rela * relocs)
{
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  bfd_signed_vma *local_got_refcounts;
  const Elf_Internal_Rela *rel, *relend;
  struct elf32_arm_link_hash_table * globals;

  globals = elf32_arm_hash_table (info);

  elf_section_data (sec)->local_dynrel = ((void*)0);

  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  local_got_refcounts = elf_local_got_refcounts (abfd);

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; rel++)
    {
      unsigned long r_symndx;
      struct elf_link_hash_entry *h = ((void*)0);
      int r_type;

      r_symndx = ELF32_R_SYM (rel->r_info);
      if (r_symndx >= symtab_hdr->sh_info)
 {
   h = sym_hashes[r_symndx - symtab_hdr->sh_info];
   while (h->root.type == bfd_link_hash_indirect
   || h->root.type == bfd_link_hash_warning)
     h = (struct elf_link_hash_entry *) h->root.u.i.link;
 }

      r_type = ELF32_R_TYPE (rel->r_info);
      r_type = arm_real_reloc_type (globals, r_type);
      switch (r_type)
 {
 case 147:
 case 146:
 case 130:
 case 129:
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

 case 128:
   elf32_arm_hash_table (info)->tls_ldm_got.refcount -= 1;
   break;

 case 150:
 case 149:
 case 137:
 case 136:
 case 140:
 case 139:
 case 148:
 case 145:
 case 138:
 case 135:
 case 142:
 case 144:
 case 141:
 case 143:
 case 132:
 case 134:
 case 131:
 case 133:


   if (h != ((void*)0))
     {
       struct elf32_arm_link_hash_entry *eh;
       struct elf32_arm_relocs_copied **pp;
       struct elf32_arm_relocs_copied *p;

       eh = (struct elf32_arm_link_hash_entry *) h;

       if (h->plt.refcount > 0)
  {
    h->plt.refcount -= 1;
    if (ELF32_R_TYPE (rel->r_info) == 135)
      eh->plt_thumb_refcount--;
  }

       if (r_type == 150
    || r_type == 137
                  || r_type == 149
                  || r_type == 136)
  {
    for (pp = &eh->relocs_copied; (p = *pp) != ((void*)0);
         pp = &p->next)
    if (p->section == sec)
      {
        p->count -= 1;
        if (ELF32_R_TYPE (rel->r_info) == 137
                          || ELF32_R_TYPE (rel->r_info) == 136)
   p->pc_count -= 1;
        if (p->count == 0)
   *pp = p->next;
        break;
      }
  }
     }
   break;

 default:
   break;
 }
    }

  return TRUE;
}
