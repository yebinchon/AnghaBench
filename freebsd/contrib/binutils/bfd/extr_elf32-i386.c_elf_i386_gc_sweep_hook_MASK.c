#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_9__ ;
typedef  struct TYPE_26__   TYPE_8__ ;
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_6__ ;
typedef  struct TYPE_23__   TYPE_5__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_13__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int refcount; } ;
struct TYPE_23__ {int refcount; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_1__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_6__ plt; TYPE_5__ got; TYPE_3__ root; } ;
struct elf_i386_link_hash_entry {struct elf_i386_dyn_relocs* dyn_relocs; } ;
struct elf_i386_dyn_relocs {struct elf_i386_dyn_relocs* next; TYPE_7__* sec; } ;
struct bfd_link_info {int /*<<< orphan*/  shared; } ;
typedef  int bfd_signed_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_25__ {int reloc_count; } ;
typedef  TYPE_7__ asection ;
struct TYPE_27__ {int /*<<< orphan*/  r_info; } ;
struct TYPE_26__ {unsigned long sh_info; } ;
struct TYPE_22__ {int refcount; } ;
struct TYPE_18__ {TYPE_4__ tls_ldm_got; } ;
struct TYPE_17__ {int /*<<< orphan*/ * local_dynrel; } ;
struct TYPE_16__ {TYPE_8__ symtab_hdr; } ;
typedef  TYPE_8__ Elf_Internal_Shdr ;
typedef  TYPE_9__ Elf_Internal_Rela ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
#define  R_386_32 138 
#define  R_386_GOT32 137 
#define  R_386_PC32 136 
#define  R_386_PLT32 135 
#define  R_386_TLS_DESC_CALL 134 
#define  R_386_TLS_GD 133 
#define  R_386_TLS_GOTDESC 132 
#define  R_386_TLS_GOTIE 131 
#define  R_386_TLS_IE 130 
#define  R_386_TLS_IE_32 129 
#define  R_386_TLS_LDM 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_link_hash_indirect ; 
 scalar_t__ bfd_link_hash_warning ; 
 TYPE_13__* FUNC2 (struct bfd_link_info*) ; 
 unsigned int FUNC3 (struct bfd_link_info*,unsigned int,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_11__* FUNC5 (TYPE_7__*) ; 
 struct elf_link_hash_entry** FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_10__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (bfd *abfd,
			struct bfd_link_info *info,
			asection *sec,
			const Elf_Internal_Rela *relocs)
{
  Elf_Internal_Shdr *symtab_hdr;
  struct elf_link_hash_entry **sym_hashes;
  bfd_signed_vma *local_got_refcounts;
  const Elf_Internal_Rela *rel, *relend;

  FUNC5 (sec)->local_dynrel = NULL;

  symtab_hdr = &FUNC7 (abfd)->symtab_hdr;
  sym_hashes = FUNC6 (abfd);
  local_got_refcounts = FUNC4 (abfd);

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; rel++)
    {
      unsigned long r_symndx;
      unsigned int r_type;
      struct elf_link_hash_entry *h = NULL;

      r_symndx = FUNC0 (rel->r_info);
      if (r_symndx >= symtab_hdr->sh_info)
	{
	  struct elf_i386_link_hash_entry *eh;
	  struct elf_i386_dyn_relocs **pp;
	  struct elf_i386_dyn_relocs *p;

	  h = sym_hashes[r_symndx - symtab_hdr->sh_info];
	  while (h->root.type == bfd_link_hash_indirect
		 || h->root.type == bfd_link_hash_warning)
	    h = (struct elf_link_hash_entry *) h->root.u.i.link;
	  eh = (struct elf_i386_link_hash_entry *) h;

	  for (pp = &eh->dyn_relocs; (p = *pp) != NULL; pp = &p->next)
	    if (p->sec == sec)
	      {
		/* Everything must go for SEC.  */
		*pp = p->next;
		break;
	      }
	}

      r_type = FUNC1 (rel->r_info);
      r_type = FUNC3 (info, r_type, h != NULL);
      switch (r_type)
	{
	case R_386_TLS_LDM:
	  if (FUNC2 (info)->tls_ldm_got.refcount > 0)
	    FUNC2 (info)->tls_ldm_got.refcount -= 1;
	  break;

	case R_386_TLS_GD:
	case R_386_TLS_GOTDESC:
	case R_386_TLS_DESC_CALL:
	case R_386_TLS_IE_32:
	case R_386_TLS_IE:
	case R_386_TLS_GOTIE:
	case R_386_GOT32:
	  if (h != NULL)
	    {
	      if (h->got.refcount > 0)
		h->got.refcount -= 1;
	    }
	  else if (local_got_refcounts != NULL)
	    {
	      if (local_got_refcounts[r_symndx] > 0)
		local_got_refcounts[r_symndx] -= 1;
	    }
	  break;

	case R_386_32:
	case R_386_PC32:
	  if (info->shared)
	    break;
	  /* Fall through */

	case R_386_PLT32:
	  if (h != NULL)
	    {
	      if (h->plt.refcount > 0)
		h->plt.refcount -= 1;
	    }
	  break;

	default:
	  break;
	}
    }

  return TRUE;
}