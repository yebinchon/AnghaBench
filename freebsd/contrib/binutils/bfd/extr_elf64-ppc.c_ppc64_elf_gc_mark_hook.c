
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_12__ ;
typedef struct TYPE_28__ TYPE_11__ ;
typedef struct TYPE_27__ TYPE_10__ ;


struct ppc_link_hash_table {int elf; } ;
struct TYPE_30__ {TYPE_10__* section; int value; } ;
struct TYPE_31__ {TYPE_1__ def; } ;
struct TYPE_32__ {scalar_t__ type; TYPE_2__ u; } ;
struct TYPE_33__ {TYPE_3__ root; } ;
struct ppc_link_hash_entry {TYPE_4__ elf; struct ppc_link_hash_entry* oh; scalar_t__ is_func_descriptor; } ;
struct TYPE_36__ {TYPE_6__* p; } ;
struct TYPE_34__ {TYPE_10__* section; } ;
struct TYPE_37__ {TYPE_7__ c; TYPE_5__ def; } ;
struct TYPE_38__ {TYPE_8__ u; int type; } ;
struct elf_link_hash_entry {TYPE_9__ root; } ;
struct bfd_sym_chain {int name; struct bfd_sym_chain* next; } ;
struct bfd_link_info {struct bfd_sym_chain* gc_sym_list; } ;
typedef enum elf_ppc64_reloc_type { ____Placeholder_elf_ppc64_reloc_type } elf_ppc64_reloc_type ;
typedef scalar_t__ bfd_vma ;
struct TYPE_27__ {int gc_mark; int owner; } ;
typedef TYPE_10__ asection ;
struct TYPE_35__ {TYPE_10__* section; } ;
struct TYPE_29__ {int r_addend; int r_info; } ;
struct TYPE_28__ {int st_value; int st_shndx; } ;
typedef TYPE_11__ Elf_Internal_Sym ;
typedef TYPE_12__ Elf_Internal_Rela ;


 int ELF64_R_TYPE (int ) ;
 int FALSE ;


 int _bfd_elf_gc_mark (struct bfd_link_info*,TYPE_10__*,TYPE_10__* (*) (TYPE_10__*,struct bfd_link_info*,TYPE_12__*,struct elf_link_hash_entry*,TYPE_11__*)) ;



 TYPE_10__* bfd_section_from_elf_index (int ,int ) ;
 scalar_t__ elf_link_hash_lookup (int *,int ,int ,int ,int ) ;
 TYPE_10__** get_opd_info (TYPE_10__*) ;
 scalar_t__ opd_entry_value (TYPE_10__*,int ,TYPE_10__**,int *) ;
 struct ppc_link_hash_table* ppc_hash_table (struct bfd_link_info*) ;

__attribute__((used)) static asection *
ppc64_elf_gc_mark_hook (asection *sec,
   struct bfd_link_info *info,
   Elf_Internal_Rela *rel,
   struct elf_link_hash_entry *h,
   Elf_Internal_Sym *sym)
{
  asection *rsec;


  if (info->gc_sym_list != ((void*)0))
    {
      struct ppc_link_hash_table *htab = ppc_hash_table (info);
      struct bfd_sym_chain *sym = info->gc_sym_list;

      info->gc_sym_list = ((void*)0);
      for (; sym != ((void*)0); sym = sym->next)
 {
   struct ppc_link_hash_entry *eh;

   eh = (struct ppc_link_hash_entry *)
     elf_link_hash_lookup (&htab->elf, sym->name, FALSE, FALSE, FALSE);
   if (eh == ((void*)0))
     continue;
   if (eh->elf.root.type != 129
       && eh->elf.root.type != 128)
     continue;

   if (eh->is_func_descriptor
       && (eh->oh->elf.root.type == 129
    || eh->oh->elf.root.type == 128))
     rsec = eh->oh->elf.root.u.def.section;
   else if (get_opd_info (eh->elf.root.u.def.section) != ((void*)0)
     && opd_entry_value (eh->elf.root.u.def.section,
           eh->elf.root.u.def.value,
           &rsec, ((void*)0)) != (bfd_vma) -1)
     ;
   else
     continue;

   if (!rsec->gc_mark)
     _bfd_elf_gc_mark (info, rsec, ppc64_elf_gc_mark_hook);

   rsec = eh->elf.root.u.def.section;
   if (!rsec->gc_mark)
     _bfd_elf_gc_mark (info, rsec, ppc64_elf_gc_mark_hook);
 }
    }



  rsec = ((void*)0);
  if (get_opd_info (sec) != ((void*)0))
    return rsec;

  if (h != ((void*)0))
    {
      enum elf_ppc64_reloc_type r_type;
      struct ppc_link_hash_entry *eh;

      r_type = ELF64_R_TYPE (rel->r_info);
      switch (r_type)
 {
 case 131:
 case 132:
   break;

 default:
   switch (h->root.type)
     {
     case 129:
     case 128:
       eh = (struct ppc_link_hash_entry *) h;
       if (eh->oh != ((void*)0)
    && eh->oh->is_func_descriptor
    && (eh->oh->elf.root.type == 129
        || eh->oh->elf.root.type == 128))
  eh = eh->oh;



       if (eh->is_func_descriptor
    && (eh->oh->elf.root.type == 129
        || eh->oh->elf.root.type == 128))
  {

    if (!eh->elf.root.u.def.section->gc_mark)
      _bfd_elf_gc_mark (info, eh->elf.root.u.def.section,
          ppc64_elf_gc_mark_hook);

    rsec = eh->oh->elf.root.u.def.section;
  }
       else if (get_opd_info (eh->elf.root.u.def.section) != ((void*)0)
         && opd_entry_value (eh->elf.root.u.def.section,
        eh->elf.root.u.def.value,
        &rsec, ((void*)0)) != (bfd_vma) -1)
  {
    if (!eh->elf.root.u.def.section->gc_mark)
      _bfd_elf_gc_mark (info, eh->elf.root.u.def.section,
          ppc64_elf_gc_mark_hook);
  }
       else
  rsec = h->root.u.def.section;
       break;

     case 130:
       rsec = h->root.u.c.p->section;
       break;

     default:
       break;
     }
 }
    }
  else
    {
      asection **opd_sym_section;

      rsec = bfd_section_from_elf_index (sec->owner, sym->st_shndx);
      opd_sym_section = get_opd_info (rsec);
      if (opd_sym_section != ((void*)0))
 {
   if (!rsec->gc_mark)
     _bfd_elf_gc_mark (info, rsec, ppc64_elf_gc_mark_hook);

   rsec = opd_sym_section[(sym->st_value + rel->r_addend) / 8];
 }
    }

  return rsec;
}
