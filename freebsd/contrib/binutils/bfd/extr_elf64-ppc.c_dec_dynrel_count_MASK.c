#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct ppc_link_hash_entry {struct ppc_dyn_relocs* dyn_relocs; } ;
struct ppc_dyn_relocs {int pc_count; scalar_t__ count; struct ppc_dyn_relocs* next; TYPE_2__* sec; } ;
struct TYPE_10__ {scalar_t__ type; } ;
struct elf_link_hash_entry {int /*<<< orphan*/  def_regular; TYPE_1__ root; } ;
struct bfd_link_info {scalar_t__ shared; int /*<<< orphan*/  symbolic; } ;
typedef  enum elf_ppc64_reloc_type { ____Placeholder_elf_ppc64_reloc_type } elf_ppc64_reloc_type ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_11__ {int /*<<< orphan*/ * owner; } ;
typedef  TYPE_2__ asection ;
struct TYPE_12__ {int /*<<< orphan*/  local_dynrel; } ;
typedef  int /*<<< orphan*/  Elf_Internal_Sym ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ ELIMINATE_COPY_RELOCS ; 
 int /*<<< orphan*/  FALSE ; 
#define  R_PPC64_ADDR14 163 
#define  R_PPC64_ADDR14_BRNTAKEN 162 
#define  R_PPC64_ADDR14_BRTAKEN 161 
#define  R_PPC64_ADDR16 160 
#define  R_PPC64_ADDR16_DS 159 
#define  R_PPC64_ADDR16_HA 158 
#define  R_PPC64_ADDR16_HI 157 
#define  R_PPC64_ADDR16_HIGHER 156 
#define  R_PPC64_ADDR16_HIGHERA 155 
#define  R_PPC64_ADDR16_HIGHEST 154 
#define  R_PPC64_ADDR16_HIGHESTA 153 
#define  R_PPC64_ADDR16_LO 152 
#define  R_PPC64_ADDR16_LO_DS 151 
#define  R_PPC64_ADDR24 150 
#define  R_PPC64_ADDR32 149 
#define  R_PPC64_ADDR64 148 
#define  R_PPC64_DTPMOD64 147 
#define  R_PPC64_DTPREL64 146 
#define  R_PPC64_REL30 145 
#define  R_PPC64_REL32 144 
#define  R_PPC64_REL64 143 
#define  R_PPC64_TOC 142 
#define  R_PPC64_TPREL16 141 
#define  R_PPC64_TPREL16_DS 140 
#define  R_PPC64_TPREL16_HA 139 
#define  R_PPC64_TPREL16_HI 138 
#define  R_PPC64_TPREL16_HIGHER 137 
#define  R_PPC64_TPREL16_HIGHERA 136 
#define  R_PPC64_TPREL16_HIGHEST 135 
#define  R_PPC64_TPREL16_HIGHESTA 134 
#define  R_PPC64_TPREL16_LO 133 
#define  R_PPC64_TPREL16_LO_DS 132 
#define  R_PPC64_TPREL64 131 
#define  R_PPC64_UADDR16 130 
#define  R_PPC64_UADDR32 129 
#define  R_PPC64_UADDR64 128 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 scalar_t__ bfd_link_hash_defweak ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (struct elf_link_hash_entry**,int /*<<< orphan*/ **,TYPE_2__**,int /*<<< orphan*/ *,int /*<<< orphan*/ **,unsigned long,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (struct bfd_link_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (bfd_vma r_info,
		  asection *sec,
		  struct bfd_link_info *info,
		  Elf_Internal_Sym **local_syms,
		  struct elf_link_hash_entry *h,
		  asection *sym_sec)
{
  enum elf_ppc64_reloc_type r_type;
  struct ppc_dyn_relocs *p;
  struct ppc_dyn_relocs **pp;

  /* Can this reloc be dynamic?  This switch, and later tests here
     should be kept in sync with the code in check_relocs.  */
  r_type = FUNC1 (r_info);
  switch (r_type)
    {
    default:
      return TRUE;

    case R_PPC64_TPREL16:
    case R_PPC64_TPREL16_LO:
    case R_PPC64_TPREL16_HI:
    case R_PPC64_TPREL16_HA:
    case R_PPC64_TPREL16_DS:
    case R_PPC64_TPREL16_LO_DS:
    case R_PPC64_TPREL16_HIGHER:
    case R_PPC64_TPREL16_HIGHERA:
    case R_PPC64_TPREL16_HIGHEST:
    case R_PPC64_TPREL16_HIGHESTA:
      if (!info->shared)
	return TRUE;

    case R_PPC64_TPREL64:
    case R_PPC64_DTPMOD64:
    case R_PPC64_DTPREL64:
    case R_PPC64_ADDR64:
    case R_PPC64_REL30:
    case R_PPC64_REL32:
    case R_PPC64_REL64:
    case R_PPC64_ADDR14:
    case R_PPC64_ADDR14_BRNTAKEN:
    case R_PPC64_ADDR14_BRTAKEN:
    case R_PPC64_ADDR16:
    case R_PPC64_ADDR16_DS:
    case R_PPC64_ADDR16_HA:
    case R_PPC64_ADDR16_HI:
    case R_PPC64_ADDR16_HIGHER:
    case R_PPC64_ADDR16_HIGHERA:
    case R_PPC64_ADDR16_HIGHEST:
    case R_PPC64_ADDR16_HIGHESTA:
    case R_PPC64_ADDR16_LO:
    case R_PPC64_ADDR16_LO_DS:
    case R_PPC64_ADDR24:
    case R_PPC64_ADDR32:
    case R_PPC64_UADDR16:
    case R_PPC64_UADDR32:
    case R_PPC64_UADDR64:
    case R_PPC64_TOC:
      break;
    }

  if (local_syms != NULL)
    {
      unsigned long r_symndx;
      Elf_Internal_Sym *sym;
      bfd *ibfd = sec->owner;

      r_symndx = FUNC0 (r_info);
      if (!FUNC6 (&h, &sym, &sym_sec, NULL, local_syms, r_symndx, ibfd))
	return FALSE;
    }

  if ((info->shared
       && (FUNC7 (info, r_type)
	   || (h != NULL
	       && (!info->symbolic
		   || h->root.type == bfd_link_hash_defweak
		   || !h->def_regular))))
      || (ELIMINATE_COPY_RELOCS
	  && !info->shared
	  && h != NULL
	  && (h->root.type == bfd_link_hash_defweak
	      || !h->def_regular)))
    ;
  else
    return TRUE;

  if (h != NULL)
    pp = &((struct ppc_link_hash_entry *) h)->dyn_relocs;
  else
    {
      if (sym_sec != NULL)
	{
	  void *vpp = &FUNC5 (sym_sec)->local_dynrel;
	  pp = (struct ppc_dyn_relocs **) vpp;
	}
      else
	{
	  void *vpp = &FUNC5 (sec)->local_dynrel;
	  pp = (struct ppc_dyn_relocs **) vpp;
	}

      /* elf_gc_sweep may have already removed all dyn relocs associated
	 with local syms for a given section.  Don't report a dynreloc
	 miscount.  */
      if (*pp == NULL)
	return TRUE;
    }

  while ((p = *pp) != NULL)
    {
      if (p->sec == sec)
	{
	  if (!FUNC7 (info, r_type))
	    p->pc_count -= 1;
	  p->count -= 1;
	  if (p->count == 0)
	    *pp = p->next;
	  return TRUE;
	}
      pp = &p->next;
    }

  FUNC3) (FUNC2("dynreloc miscount for %B, section %A"),
			   sec->owner, sec);
  FUNC4 (bfd_error_bad_value);
  return FALSE;
}