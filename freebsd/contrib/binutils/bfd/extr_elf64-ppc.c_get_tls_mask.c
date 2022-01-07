
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int value; } ;
struct TYPE_14__ {TYPE_1__ def; } ;
struct TYPE_17__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {int def_dynamic; TYPE_5__ root; } ;
typedef int bfd_vma ;
typedef int bfd ;
typedef int asection ;
struct TYPE_15__ {unsigned long* symndx; int* add; } ;
struct TYPE_16__ {TYPE_3__ toc; } ;
struct TYPE_20__ {scalar_t__ sec_type; TYPE_4__ u; } ;
struct TYPE_19__ {scalar_t__ r_addend; int r_info; } ;
struct TYPE_18__ {int st_value; } ;
typedef TYPE_6__ Elf_Internal_Sym ;
typedef TYPE_7__ Elf_Internal_Rela ;


 int BFD_ASSERT (int) ;
 unsigned long ELF64_R_SYM (int ) ;
 scalar_t__ bfd_link_hash_defined ;
 scalar_t__ bfd_link_hash_defweak ;
 int get_sym_h (struct elf_link_hash_entry**,TYPE_6__**,int **,char**,TYPE_6__**,unsigned long,int *) ;
 TYPE_8__* ppc64_elf_section_data (int *) ;
 scalar_t__ sec_toc ;

__attribute__((used)) static int
get_tls_mask (char **tls_maskp,
       unsigned long *toc_symndx,
       bfd_vma *toc_addend,
       Elf_Internal_Sym **locsymsp,
       const Elf_Internal_Rela *rel,
       bfd *ibfd)
{
  unsigned long r_symndx;
  int next_r;
  struct elf_link_hash_entry *h;
  Elf_Internal_Sym *sym;
  asection *sec;
  bfd_vma off;

  r_symndx = ELF64_R_SYM (rel->r_info);
  if (!get_sym_h (&h, &sym, &sec, tls_maskp, locsymsp, r_symndx, ibfd))
    return 0;

  if ((*tls_maskp != ((void*)0) && **tls_maskp != 0)
      || sec == ((void*)0)
      || ppc64_elf_section_data (sec)->sec_type != sec_toc)
    return 1;


  if (h != ((void*)0))
    {
      BFD_ASSERT (h->root.type == bfd_link_hash_defined);
      off = h->root.u.def.value;
    }
  else
    off = sym->st_value;
  off += rel->r_addend;
  BFD_ASSERT (off % 8 == 0);
  r_symndx = ppc64_elf_section_data (sec)->u.toc.symndx[off / 8];
  next_r = ppc64_elf_section_data (sec)->u.toc.symndx[off / 8 + 1];
  if (toc_symndx != ((void*)0))
    *toc_symndx = r_symndx;
  if (toc_addend != ((void*)0))
    *toc_addend = ppc64_elf_section_data (sec)->u.toc.add[off / 8];
  if (!get_sym_h (&h, &sym, &sec, tls_maskp, locsymsp, r_symndx, ibfd))
    return 0;
  if ((h == ((void*)0)
       || ((h->root.type == bfd_link_hash_defined
     || h->root.type == bfd_link_hash_defweak)
    && !h->def_dynamic))
      && (next_r == -1 || next_r == -2))
    return 1 - next_r;
  return 1;
}
