#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_11__ ;

/* Type definitions */
struct elf_reloc_cookie {int locsymcount; int extsymoff; int r_sym_shift; int /*<<< orphan*/ * locsyms; int /*<<< orphan*/ * rels; int /*<<< orphan*/ * relend; int /*<<< orphan*/ * rel; scalar_t__ bad_symtab; int /*<<< orphan*/  sym_hashes; TYPE_3__* abfd; } ;
struct elf_backend_data {scalar_t__ (* elf_backend_discard_info ) (TYPE_3__*,struct elf_reloc_cookie*,struct bfd_link_info*) ;TYPE_2__* s; } ;
struct bfd_link_info {int /*<<< orphan*/  relocatable; scalar_t__ eh_frame_hdr; int /*<<< orphan*/  keep_memory; TYPE_1__* callbacks; TYPE_3__* input_bfds; int /*<<< orphan*/  hash; scalar_t__ traditional_format; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_30__ {int flags; struct TYPE_30__* link_next; } ;
typedef  TYPE_3__ bfd ;
struct TYPE_31__ {scalar_t__ size; scalar_t__ sec_info_type; unsigned int reloc_count; int /*<<< orphan*/  output_section; } ;
typedef  TYPE_4__ asection ;
struct TYPE_32__ {int sh_size; int sh_info; unsigned char* contents; } ;
struct TYPE_33__ {TYPE_5__ symtab_hdr; } ;
struct TYPE_29__ {int sizeof_sym; int arch_size; unsigned int int_rels_per_ext_rel; } ;
struct TYPE_28__ {int /*<<< orphan*/  (* einfo ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_27__ {int /*<<< orphan*/ * relocs; int /*<<< orphan*/  sec_info; } ;
typedef  int /*<<< orphan*/  Elf_Internal_Sym ;
typedef  TYPE_5__ Elf_Internal_Shdr ;

/* Variables and functions */
 int DYNAMIC ; 
 scalar_t__ ELF_INFO_TYPE_STABS ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct elf_reloc_cookie*) ; 
 scalar_t__ FUNC2 (TYPE_3__*,struct bfd_link_info*,TYPE_4__*,int /*<<< orphan*/ ,struct elf_reloc_cookie*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,struct bfd_link_info*) ; 
 void* FUNC4 (TYPE_3__*,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_3__*,TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bfd_elf_reloc_symbol_deleted_p ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 TYPE_4__* FUNC7 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_target_elf_flavour ; 
 scalar_t__ FUNC9 (TYPE_3__*) ; 
 TYPE_11__* FUNC10 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 TYPE_8__* FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 struct elf_backend_data* FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (TYPE_3__*,struct elf_reloc_cookie*,struct bfd_link_info*) ; 

bfd_boolean
FUNC18 (bfd *output_bfd, struct bfd_link_info *info)
{
  struct elf_reloc_cookie cookie;
  asection *stab, *eh;
  Elf_Internal_Shdr *symtab_hdr;
  const struct elf_backend_data *bed;
  bfd *abfd;
  unsigned int count;
  bfd_boolean ret = FALSE;

  if (info->traditional_format
      || !FUNC15 (info->hash))
    return FALSE;

  for (abfd = info->input_bfds; abfd != NULL; abfd = abfd->link_next)
    {
      if (FUNC6 (abfd) != bfd_target_elf_flavour)
	continue;

      bed = FUNC14 (abfd);

      if ((abfd->flags & DYNAMIC) != 0)
	continue;

      eh = NULL;
      if (!info->relocatable)
	{
	  eh = FUNC7 (abfd, ".eh_frame");
	  if (eh != NULL
	      && (eh->size == 0
		  || FUNC8 (eh->output_section)))
	    eh = NULL;
	}

      stab = FUNC7 (abfd, ".stab");
      if (stab != NULL
	  && (stab->size == 0
	      || FUNC8 (stab->output_section)
	      || stab->sec_info_type != ELF_INFO_TYPE_STABS))
	stab = NULL;

      if (stab == NULL
	  && eh == NULL
	  && bed->elf_backend_discard_info == NULL)
	continue;

      symtab_hdr = &FUNC12 (abfd)->symtab_hdr;
      cookie.abfd = abfd;
      cookie.sym_hashes = FUNC11 (abfd);
      cookie.bad_symtab = FUNC9 (abfd);
      if (cookie.bad_symtab)
	{
	  cookie.locsymcount = symtab_hdr->sh_size / bed->s->sizeof_sym;
	  cookie.extsymoff = 0;
	}
      else
	{
	  cookie.locsymcount = symtab_hdr->sh_info;
	  cookie.extsymoff = symtab_hdr->sh_info;
	}

      if (bed->s->arch_size == 32)
	cookie.r_sym_shift = 8;
      else
	cookie.r_sym_shift = 32;

      cookie.locsyms = (Elf_Internal_Sym *) symtab_hdr->contents;
      if (cookie.locsyms == NULL && cookie.locsymcount != 0)
	{
	  cookie.locsyms = FUNC5 (abfd, symtab_hdr,
						 cookie.locsymcount, 0,
						 NULL, NULL, NULL);
	  if (cookie.locsyms == NULL)
	    {
	      info->callbacks->einfo (FUNC0("%P%X: can not read symbols: %E\n"));
	      return FALSE;
	    }
	}

      if (stab != NULL)
	{
	  cookie.rels = NULL;
	  count = stab->reloc_count;
	  if (count != 0)
	    cookie.rels = FUNC4 (abfd, stab, NULL, NULL,
						     info->keep_memory);
	  if (cookie.rels != NULL)
	    {
	      cookie.rel = cookie.rels;
	      cookie.relend = cookie.rels;
	      cookie.relend += count * bed->s->int_rels_per_ext_rel;
	      if (FUNC1 (abfd, stab,
					      FUNC10 (stab)->sec_info,
					      bfd_elf_reloc_symbol_deleted_p,
					      &cookie))
		ret = TRUE;
	      if (FUNC10 (stab)->relocs != cookie.rels)
		FUNC13 (cookie.rels);
	    }
	}

      if (eh != NULL)
	{
	  cookie.rels = NULL;
	  count = eh->reloc_count;
	  if (count != 0)
	    cookie.rels = FUNC4 (abfd, eh, NULL, NULL,
						     info->keep_memory);
	  cookie.rel = cookie.rels;
	  cookie.relend = cookie.rels;
	  if (cookie.rels != NULL)
	    cookie.relend += count * bed->s->int_rels_per_ext_rel;

	  if (FUNC2 (abfd, info, eh,
						 bfd_elf_reloc_symbol_deleted_p,
						 &cookie))
	    ret = TRUE;

	  if (cookie.rels != NULL
	      && FUNC10 (eh)->relocs != cookie.rels)
	    FUNC13 (cookie.rels);
	}

      if (bed->elf_backend_discard_info != NULL
	  && (*bed->elf_backend_discard_info) (abfd, &cookie, info))
	ret = TRUE;

      if (cookie.locsyms != NULL
	  && symtab_hdr->contents != (unsigned char *) cookie.locsyms)
	{
	  if (! info->keep_memory)
	    FUNC13 (cookie.locsyms);
	  else
	    symtab_hdr->contents = (unsigned char *) cookie.locsyms;
	}
    }

  if (info->eh_frame_hdr
      && !info->relocatable
      && FUNC3 (output_bfd, info))
    ret = TRUE;

  return ret;
}