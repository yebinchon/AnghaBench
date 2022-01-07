
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
typedef struct TYPE_16__ TYPE_10__ ;


struct ppc_link_hash_table {int dummy; } ;
struct ppc_link_hash_entry {struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {struct ppc_dyn_relocs* next; TYPE_8__* sec; } ;
struct TYPE_25__ {int refcount; } ;
struct plt_entry {TYPE_7__ plt; int addend; struct plt_entry* next; } ;
struct TYPE_23__ {int refcount; } ;
struct got_entry {char tls_type; TYPE_5__ got; int * owner; int addend; struct got_entry* next; } ;
struct TYPE_24__ {struct plt_entry* plist; } ;
struct TYPE_22__ {struct got_entry* glist; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_1__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_6__ plt; TYPE_4__ got; TYPE_3__ root; } ;
struct bfd_link_info {int dummy; } ;
typedef enum elf_ppc64_reloc_type { ____Placeholder_elf_ppc64_reloc_type } elf_ppc64_reloc_type ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_26__ {int flags; int reloc_count; } ;
typedef TYPE_8__ asection ;
struct TYPE_27__ {unsigned long sh_info; } ;
struct TYPE_18__ {int * local_dynrel; } ;
struct TYPE_17__ {TYPE_9__ symtab_hdr; } ;
struct TYPE_16__ {int r_addend; int r_info; } ;
typedef TYPE_9__ Elf_Internal_Shdr ;
typedef TYPE_10__ Elf_Internal_Rela ;


 unsigned long ELF64_R_SYM (int ) ;
 int ELF64_R_TYPE (int ) ;
 int SEC_ALLOC ;
 char TLS_DTPREL ;
 char TLS_GD ;
 char TLS_LD ;
 char TLS_TLS ;
 char TLS_TPREL ;
 int TRUE ;
 int abort () ;
 scalar_t__ bfd_link_hash_indirect ;
 scalar_t__ bfd_link_hash_warning ;
 struct got_entry** elf_local_got_ents (int *) ;
 TYPE_14__* elf_section_data (TYPE_8__*) ;
 struct elf_link_hash_entry** elf_sym_hashes (int *) ;
 TYPE_13__* elf_tdata (int *) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static bfd_boolean
ppc64_elf_gc_sweep_hook (bfd *abfd, struct bfd_link_info *info,
    asection *sec, const Elf_Internal_Rela *relocs)
{
  struct ppc_link_hash_table *htab;
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  struct got_entry **local_got_ents;
  const Elf_Internal_Rela *rel, *relend;

  if ((sec->flags & SEC_ALLOC) == 0)
    return TRUE;

  elf_section_data (sec)->local_dynrel = ((void*)0);

  htab = ppc_hash_table (info);
  symtab_hdr = &elf_tdata (abfd)->symtab_hdr;
  sym_hashes = elf_sym_hashes (abfd);
  local_got_ents = elf_local_got_ents (abfd);

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; rel++)
    {
      unsigned long r_symndx;
      enum elf_ppc64_reloc_type r_type;
      struct elf_link_hash_entry *h = ((void*)0);
      char tls_type = 0;

      r_symndx = ELF64_R_SYM (rel->r_info);
      r_type = ELF64_R_TYPE (rel->r_info);
      if (r_symndx >= symtab_hdr->sh_info)
 {
   struct ppc_link_hash_entry *eh;
   struct ppc_dyn_relocs **pp;
   struct ppc_dyn_relocs *p;

   h = sym_hashes[r_symndx - symtab_hdr->sh_info];
   while (h->root.type == bfd_link_hash_indirect
   || h->root.type == bfd_link_hash_warning)
     h = (struct elf_link_hash_entry *) h->root.u.i.link;
   eh = (struct ppc_link_hash_entry *) h;

   for (pp = &eh->dyn_relocs; (p = *pp) != ((void*)0); pp = &p->next)
     if (p->sec == sec)
       {

  *pp = p->next;
  break;
       }
 }

      switch (r_type)
 {
 case 144:
 case 141:
 case 142:
 case 143:
   tls_type = TLS_TLS | TLS_LD;
   goto dogot;

 case 148:
 case 145:
 case 146:
 case 147:
   tls_type = TLS_TLS | TLS_GD;
   goto dogot;

 case 140:
 case 137:
 case 138:
 case 139:
   tls_type = TLS_TLS | TLS_TPREL;
   goto dogot;

 case 152:
 case 149:
 case 150:
 case 151:
   tls_type = TLS_TLS | TLS_DTPREL;
   goto dogot;

 case 158:
 case 157:
 case 156:
 case 155:
 case 154:
 case 153:
 dogot:
   {
     struct got_entry *ent;

     if (h != ((void*)0))
       ent = h->got.glist;
     else
       ent = local_got_ents[r_symndx];

     for (; ent != ((void*)0); ent = ent->next)
       if (ent->addend == rel->r_addend
    && ent->owner == abfd
    && ent->tls_type == tls_type)
  break;
     if (ent == ((void*)0))
       abort ();
     if (ent->got.refcount > 0)
       ent->got.refcount -= 1;
   }
   break;

 case 136:
 case 135:
 case 134:
 case 133:
 case 132:
 case 131:
 case 130:
 case 129:
 case 128:
   if (h != ((void*)0))
     {
       struct plt_entry *ent;

       for (ent = h->plt.plist; ent != ((void*)0); ent = ent->next)
  if (ent->addend == rel->r_addend)
    break;
       if (ent != ((void*)0) && ent->plt.refcount > 0)
  ent->plt.refcount -= 1;
     }
   break;

 default:
   break;
 }
    }
  return TRUE;
}
