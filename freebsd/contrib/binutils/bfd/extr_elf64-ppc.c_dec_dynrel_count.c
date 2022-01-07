
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct ppc_link_hash_entry {struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {int pc_count; scalar_t__ count; struct ppc_dyn_relocs* next; TYPE_2__* sec; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct elf_link_hash_entry {int def_regular; TYPE_1__ root; } ;
struct bfd_link_info {scalar_t__ shared; int symbolic; } ;
typedef enum elf_ppc64_reloc_type { ____Placeholder_elf_ppc64_reloc_type } elf_ppc64_reloc_type ;
typedef int bfd_vma ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_11__ {int * owner; } ;
typedef TYPE_2__ asection ;
struct TYPE_12__ {int local_dynrel; } ;
typedef int Elf_Internal_Sym ;


 unsigned long ELF64_R_SYM (int ) ;
 int ELF64_R_TYPE (int ) ;
 scalar_t__ ELIMINATE_COPY_RELOCS ;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,TYPE_2__*) ;
 int bfd_error_bad_value ;
 scalar_t__ bfd_link_hash_defweak ;
 int bfd_set_error (int ) ;
 TYPE_5__* elf_section_data (TYPE_2__*) ;
 int get_sym_h (struct elf_link_hash_entry**,int **,TYPE_2__**,int *,int **,unsigned long,int *) ;
 scalar_t__ must_be_dyn_reloc (struct bfd_link_info*,int) ;
 int stub1 (int ,int *,TYPE_2__*) ;

__attribute__((used)) static bfd_boolean
dec_dynrel_count (bfd_vma r_info,
    asection *sec,
    struct bfd_link_info *info,
    Elf_Internal_Sym **local_syms,
    struct elf_link_hash_entry *h,
    asection *sym_sec)
{
  enum elf_ppc64_reloc_type r_type;
  struct ppc_dyn_relocs *p;
  struct ppc_dyn_relocs **pp;



  r_type = ELF64_R_TYPE (r_info);
  switch (r_type)
    {
    default:
      return TRUE;

    case 141:
    case 133:
    case 138:
    case 139:
    case 140:
    case 132:
    case 137:
    case 136:
    case 135:
    case 134:
      if (!info->shared)
 return TRUE;

    case 131:
    case 147:
    case 146:
    case 148:
    case 145:
    case 144:
    case 143:
    case 163:
    case 162:
    case 161:
    case 160:
    case 159:
    case 158:
    case 157:
    case 156:
    case 155:
    case 154:
    case 153:
    case 152:
    case 151:
    case 150:
    case 149:
    case 130:
    case 129:
    case 128:
    case 142:
      break;
    }

  if (local_syms != ((void*)0))
    {
      unsigned long r_symndx;
      Elf_Internal_Sym *sym;
      bfd *ibfd = sec->owner;

      r_symndx = ELF64_R_SYM (r_info);
      if (!get_sym_h (&h, &sym, &sym_sec, ((void*)0), local_syms, r_symndx, ibfd))
 return FALSE;
    }

  if ((info->shared
       && (must_be_dyn_reloc (info, r_type)
    || (h != ((void*)0)
        && (!info->symbolic
     || h->root.type == bfd_link_hash_defweak
     || !h->def_regular))))
      || (ELIMINATE_COPY_RELOCS
   && !info->shared
   && h != ((void*)0)
   && (h->root.type == bfd_link_hash_defweak
       || !h->def_regular)))
    ;
  else
    return TRUE;

  if (h != ((void*)0))
    pp = &((struct ppc_link_hash_entry *) h)->dyn_relocs;
  else
    {
      if (sym_sec != ((void*)0))
 {
   void *vpp = &elf_section_data (sym_sec)->local_dynrel;
   pp = (struct ppc_dyn_relocs **) vpp;
 }
      else
 {
   void *vpp = &elf_section_data (sec)->local_dynrel;
   pp = (struct ppc_dyn_relocs **) vpp;
 }




      if (*pp == ((void*)0))
 return TRUE;
    }

  while ((p = *pp) != ((void*)0))
    {
      if (p->sec == sec)
 {
   if (!must_be_dyn_reloc (info, r_type))
     p->pc_count -= 1;
   p->count -= 1;
   if (p->count == 0)
     *pp = p->next;
   return TRUE;
 }
      pp = &p->next;
    }

  (*_bfd_error_handler) (_("dynreloc miscount for %B, section %A"),
      sec->owner, sec);
  bfd_set_error (bfd_error_bad_value);
  return FALSE;
}
