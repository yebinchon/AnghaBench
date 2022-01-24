#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;

/* Type definitions */
struct internal_reloc {int r_vaddr; int r_symndx; int r_offset; scalar_t__ r_type; } ;
struct external_reloc {int dummy; } ;
typedef  int /*<<< orphan*/  n ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_23__ {TYPE_2__** outsymbols; TYPE_3__* sections; } ;
typedef  TYPE_1__ bfd ;
struct TYPE_24__ {char* name; scalar_t__ section; int flags; TYPE_1__* the_bfd; } ;
typedef  TYPE_2__ asymbol ;
struct TYPE_25__ {int reloc_count; int vma; int /*<<< orphan*/  rel_filepos; TYPE_4__** orelocation; struct TYPE_25__* next; } ;
typedef  TYPE_3__ asection ;
struct TYPE_26__ {int address; int addend; TYPE_19__* howto; TYPE_2__** sym_ptr_ptr; } ;
typedef  TYPE_4__ arelent ;
struct TYPE_22__ {scalar_t__ type; } ;

/* Variables and functions */
 int BSF_SECTION_SYM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ R_IHCONST ; 
 scalar_t__ FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (struct internal_reloc,TYPE_19__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 scalar_t__ bfd_abs_section_ptr ; 
 scalar_t__ FUNC4 (struct external_reloc*,int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 TYPE_4__** FUNC6 (int) ; 
 scalar_t__ FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct internal_reloc*,struct external_reloc*) ; 
 int /*<<< orphan*/  compare_arelent_ptr ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__**) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__**,TYPE_4__**,size_t) ; 
 int /*<<< orphan*/  FUNC13 (struct internal_reloc*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (TYPE_1__*) ; 
 scalar_t__ FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__**,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (char const*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC18 (bfd * abfd, int first_undef)
{
  asection *s;

  for (s = abfd->sections; s != NULL; s = s->next)
    {
      unsigned int i;
      struct external_reloc dst;
      arelent **p;

#ifndef TARG_AUX
      p = s->orelocation;
#else
      {
	/* Sort relocations before we write them out.  */
	bfd_size_type amt;

	amt = s->reloc_count;
	amt *= sizeof (arelent *);
	p = bfd_malloc (amt);
	if (p == NULL && s->reloc_count > 0)
	  return FALSE;
	memcpy (p, s->orelocation, (size_t) amt);
	qsort (p, s->reloc_count, sizeof (arelent *), compare_arelent_ptr);
      }
#endif

      if (FUNC7 (abfd, s->rel_filepos, SEEK_SET) != 0)
	return FALSE;

#ifdef COFF_WITH_PE
      if (obj_pe (abfd) && s->reloc_count >= 0xffff)
	{
	  /* Encode real count here as first reloc.  */
	  struct internal_reloc n;

	  memset (& n, 0, sizeof (n));
	  /* Add one to count *this* reloc (grr).  */
	  n.r_vaddr = s->reloc_count + 1;
	  coff_swap_reloc_out (abfd, &n, &dst);
	  if (bfd_bwrite (& dst, (bfd_size_type) bfd_coff_relsz (abfd),
			  abfd) != bfd_coff_relsz (abfd))
	    return FALSE;
	}
#endif

      for (i = 0; i < s->reloc_count; i++)
	{
	  struct internal_reloc n;
	  arelent *q = p[i];

	  FUNC13 (& n, 0, sizeof (n));

	  /* Now we've renumbered the symbols we know where the
	     undefined symbols live in the table.  Check the reloc
	     entries for symbols who's output bfd isn't the right one.
	     This is because the symbol was undefined (which means
	     that all the pointers are never made to point to the same
	     place). This is a bad thing,'cause the symbols attached
	     to the output bfd are indexed, so that the relocation
	     entries know which symbol index they point to.  So we
	     have to look up the output symbol here.  */

	  if (q->sym_ptr_ptr[0]->the_bfd != abfd)
	    {
	      int j;
	      const char *sname = q->sym_ptr_ptr[0]->name;
	      asymbol **outsyms = abfd->outsymbols;

	      for (j = first_undef; outsyms[j]; j++)
		{
		  const char *intable = outsyms[j]->name;

		  if (FUNC17 (intable, sname) == 0)
		    {
		      /* Got a hit, so repoint the reloc.  */
		      q->sym_ptr_ptr = outsyms + j;
		      break;
		    }
		}
	    }

	  n.r_vaddr = q->address + s->vma;

#ifdef R_IHCONST
	  /* The 29k const/consth reloc pair is a real kludge.  The consth
	     part doesn't have a symbol; it has an offset.  So rebuilt
	     that here.  */
	  if (q->howto->type == R_IHCONST)
	    n.r_symndx = q->addend;
	  else
#endif
	    if (q->sym_ptr_ptr)
	      {
#ifdef SECTION_RELATIVE_ABSOLUTE_SYMBOL_P
                if (SECTION_RELATIVE_ABSOLUTE_SYMBOL_P (q, s))
#else
		if ((*q->sym_ptr_ptr)->section == bfd_abs_section_ptr
		    && ((*q->sym_ptr_ptr)->flags & BSF_SECTION_SYM) != 0)
#endif
		  /* This is a relocation relative to the absolute symbol.  */
		  n.r_symndx = -1;
		else
		  {
		    n.r_symndx = FUNC11 ((*(q->sym_ptr_ptr)));
		    /* Check to see if the symbol reloc points to a symbol
		       we don't have in our symbol table.  */
		    if (n.r_symndx > FUNC14 (abfd))
		      {
			FUNC8 (bfd_error_bad_value);
			FUNC3 (FUNC2("%B: reloc against a non-existant symbol index: %ld"),
					    abfd, n.r_symndx);
			return FALSE;
		      }
		  }
	      }

#ifdef SWAP_OUT_RELOC_OFFSET
	  n.r_offset = q->addend;
#endif

#ifdef SELECT_RELOC
	  /* Work out reloc type from what is required.  */
	  SELECT_RELOC (n, q->howto);
#else
	  n.r_type = q->howto->type;
#endif
	  FUNC9 (abfd, &n, &dst);

	  if (FUNC4 (& dst, (bfd_size_type) FUNC5 (abfd),
			 abfd) != FUNC5 (abfd))
	    return FALSE;
	}

#ifdef TARG_AUX
      if (p != NULL)
	free (p);
#endif
    }

  return TRUE;
}