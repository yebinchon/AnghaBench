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
struct elf_s390_link_hash_entry {int /*<<< orphan*/  gotplt_refcount; struct elf_s390_dyn_relocs* dyn_relocs; } ;
struct elf_s390_dyn_relocs {struct elf_s390_dyn_relocs* next; TYPE_7__* sec; } ;
struct TYPE_24__ {int refcount; } ;
struct TYPE_23__ {int refcount; } ;
struct TYPE_19__ {scalar_t__ link; } ;
struct TYPE_20__ {TYPE_1__ i; } ;
struct TYPE_21__ {scalar_t__ type; TYPE_2__ u; } ;
struct elf_link_hash_entry {TYPE_6__ plt; TYPE_5__ got; TYPE_3__ root; } ;
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
#define  R_390_12 169 
#define  R_390_16 168 
#define  R_390_20 167 
#define  R_390_32 166 
#define  R_390_64 165 
#define  R_390_8 164 
#define  R_390_GOT12 163 
#define  R_390_GOT16 162 
#define  R_390_GOT20 161 
#define  R_390_GOT32 160 
#define  R_390_GOT64 159 
#define  R_390_GOTENT 158 
#define  R_390_GOTOFF16 157 
#define  R_390_GOTOFF32 156 
#define  R_390_GOTOFF64 155 
#define  R_390_GOTPC 154 
#define  R_390_GOTPCDBL 153 
#define  R_390_GOTPLT12 152 
#define  R_390_GOTPLT16 151 
#define  R_390_GOTPLT20 150 
#define  R_390_GOTPLT32 149 
#define  R_390_GOTPLT64 148 
#define  R_390_GOTPLTENT 147 
#define  R_390_PC16 146 
#define  R_390_PC16DBL 145 
#define  R_390_PC32 144 
#define  R_390_PC32DBL 143 
#define  R_390_PC64 142 
#define  R_390_PLT16DBL 141 
#define  R_390_PLT32 140 
#define  R_390_PLT32DBL 139 
#define  R_390_PLT64 138 
#define  R_390_PLTOFF16 137 
#define  R_390_PLTOFF32 136 
#define  R_390_PLTOFF64 135 
#define  R_390_TLS_GD64 134 
#define  R_390_TLS_GOTIE12 133 
#define  R_390_TLS_GOTIE20 132 
#define  R_390_TLS_GOTIE64 131 
#define  R_390_TLS_IE64 130 
#define  R_390_TLS_IEENT 129 
#define  R_390_TLS_LDM64 128 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bfd_link_hash_indirect ; 
 scalar_t__ bfd_link_hash_warning ; 
 int* FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_13__* FUNC3 (struct bfd_link_info*) ; 
 unsigned int FUNC4 (struct bfd_link_info*,unsigned int,int /*<<< orphan*/ ) ; 
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
  local_got_refcounts = FUNC2 (abfd);

  relend = relocs + sec->reloc_count;
  for (rel = relocs; rel < relend; rel++)
    {
      unsigned long r_symndx;
      unsigned int r_type;
      struct elf_link_hash_entry *h = NULL;

      r_symndx = FUNC0 (rel->r_info);
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

	  for (pp = &eh->dyn_relocs; (p = *pp) != NULL; pp = &p->next)
	    if (p->sec == sec)
	      {
		/* Everything must go for SEC.  */
		*pp = p->next;
		break;
	      }
	}

      r_type = FUNC1 (rel->r_info);
      r_type = FUNC4 (info, r_type, h != NULL);
      switch (r_type)
	{
	case R_390_TLS_LDM64:
	  if (FUNC3 (info)->tls_ldm_got.refcount > 0)
	    FUNC3 (info)->tls_ldm_got.refcount -= 1;
	  break;

	case R_390_TLS_GD64:
	case R_390_TLS_IE64:
	case R_390_TLS_GOTIE12:
	case R_390_TLS_GOTIE20:
	case R_390_TLS_GOTIE64:
	case R_390_TLS_IEENT:
	case R_390_GOT12:
	case R_390_GOT16:
	case R_390_GOT20:
	case R_390_GOT32:
	case R_390_GOT64:
	case R_390_GOTOFF16:
	case R_390_GOTOFF32:
	case R_390_GOTOFF64:
	case R_390_GOTPC:
	case R_390_GOTPCDBL:
	case R_390_GOTENT:
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

	case R_390_8:
	case R_390_12:
	case R_390_16:
	case R_390_20:
	case R_390_32:
	case R_390_64:
	case R_390_PC16:
	case R_390_PC16DBL:
	case R_390_PC32:
	case R_390_PC32DBL:
	case R_390_PC64:
	  if (info->shared)
	    break;
	  /* Fall through */

	case R_390_PLT16DBL:
	case R_390_PLT32:
	case R_390_PLT32DBL:
	case R_390_PLT64:
	case R_390_PLTOFF16:
	case R_390_PLTOFF32:
	case R_390_PLTOFF64:
	  if (h != NULL)
	    {
	      if (h->plt.refcount > 0)
		h->plt.refcount -= 1;
	    }
	  break;

	case R_390_GOTPLT12:
	case R_390_GOTPLT16:
	case R_390_GOTPLT20:
	case R_390_GOTPLT32:
	case R_390_GOTPLT64:
	case R_390_GOTPLTENT:
	  if (h != NULL)
	    {
	      if (h->plt.refcount > 0)
		{
		  ((struct elf_s390_link_hash_entry *) h)->gotplt_refcount--;
		  h->plt.refcount -= 1;
		}
	    }
	  else if (local_got_refcounts != NULL)
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