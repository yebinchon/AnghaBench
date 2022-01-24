#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_7__ ;
typedef  struct TYPE_29__   TYPE_6__ ;
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;
typedef  struct TYPE_23__   TYPE_17__ ;
typedef  struct TYPE_22__   TYPE_13__ ;
typedef  struct TYPE_21__   TYPE_12__ ;

/* Type definitions */
struct TYPE_25__ {char* string; } ;
struct TYPE_26__ {TYPE_2__ root; int /*<<< orphan*/  type; } ;
struct xcoff_link_hash_entry {int flags; TYPE_4__* descriptor; TYPE_3__ root; } ;
struct internal_reloc {size_t r_symndx; int r_type; } ;
struct bfd_link_info {int /*<<< orphan*/  keep_memory; TYPE_1__* hash; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_28__ {int flags; scalar_t__ reloc_count; TYPE_7__* owner; } ;
typedef  TYPE_5__ asection ;
struct TYPE_30__ {scalar_t__ xvec; } ;
struct TYPE_29__ {int first_symndx; int last_symndx; } ;
struct TYPE_27__ {int flags; } ;
struct TYPE_24__ {scalar_t__ creator; } ;
struct TYPE_23__ {int /*<<< orphan*/ * relocs; int /*<<< orphan*/  keep_relocs; } ;
struct TYPE_22__ {TYPE_5__** csects; } ;
struct TYPE_21__ {int /*<<< orphan*/  ldrel_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  R_GL 136 
#define  R_NEG 135 
#define  R_POS 134 
#define  R_RL 133 
#define  R_RLA 132 
#define  R_TCL 131 
#define  R_TOC 130 
#define  R_TRL 129 
#define  R_TRLA 128 
 int SEC_MARK ; 
 int SEC_RELOC ; 
 int /*<<< orphan*/  TRUE ; 
 int XCOFF_CALLED ; 
 int XCOFF_DEF_DYNAMIC ; 
 int XCOFF_DEF_REGULAR ; 
 int XCOFF_IMPORT ; 
 int XCOFF_LDREL ; 
 int XCOFF_MARK ; 
 scalar_t__ FUNC0 (TYPE_5__*) ; 
 int /*<<< orphan*/  bfd_link_hash_common ; 
 int /*<<< orphan*/  bfd_link_hash_defined ; 
 int /*<<< orphan*/  bfd_link_hash_defweak ; 
 int /*<<< orphan*/  bfd_link_hash_undefined ; 
 int /*<<< orphan*/  bfd_link_hash_undefweak ; 
 TYPE_17__* FUNC1 (TYPE_7__*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (TYPE_7__*) ; 
 struct xcoff_link_hash_entry** FUNC4 (TYPE_7__*) ; 
 TYPE_13__* FUNC5 (TYPE_7__*) ; 
 TYPE_12__* FUNC6 (struct bfd_link_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct bfd_link_info*,struct xcoff_link_hash_entry*) ; 
 struct internal_reloc* FUNC8 (TYPE_7__*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_6__* FUNC9 (TYPE_7__*,TYPE_5__*) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (struct bfd_link_info *info, asection *sec)
{
  if (FUNC0 (sec)
      || (sec->flags & SEC_MARK) != 0)
    return TRUE;

  sec->flags |= SEC_MARK;

  if (sec->owner->xvec == info->hash->creator
      && FUNC1 (sec->owner, sec) != NULL
      && FUNC9 (sec->owner, sec) != NULL)
    {
      struct xcoff_link_hash_entry **hp, **hpend;
      struct internal_reloc *rel, *relend;

      /* Mark all the symbols in this section.  */
      hp = (FUNC4 (sec->owner)
	    + FUNC9 (sec->owner, sec)->first_symndx);
      hpend = (FUNC4 (sec->owner)
	       + FUNC9 (sec->owner, sec)->last_symndx);
      for (; hp < hpend; hp++)
	{
	  struct xcoff_link_hash_entry *h;

	  h = *hp;
	  if (h != NULL
	      && (h->flags & XCOFF_MARK) == 0)
	    {
	      if (! FUNC7 (info, h))
		return FALSE;
	    }
	}

      /* Look through the section relocs.  */
      if ((sec->flags & SEC_RELOC) != 0
	  && sec->reloc_count > 0)
	{
	  rel = FUNC8 (sec->owner, sec, TRUE,
					    NULL, FALSE, NULL);
	  if (rel == NULL)
	    return FALSE;
	  relend = rel + sec->reloc_count;
	  for (; rel < relend; rel++)
	    {
	      asection *rsec;
	      struct xcoff_link_hash_entry *h;

	      if ((unsigned int) rel->r_symndx
		  > FUNC3 (sec->owner))
		continue;

	      h = FUNC4 (sec->owner)[rel->r_symndx];
	      if (h != NULL
		  && (h->flags & XCOFF_MARK) == 0)
		{
		  if (! FUNC7 (info, h))
		    return FALSE;
		}

	      rsec = FUNC5 (sec->owner)->csects[rel->r_symndx];
	      if (rsec != NULL
		  && (rsec->flags & SEC_MARK) == 0)
		{
		  if (! FUNC10 (info, rsec))
		    return FALSE;
		}

	      /* See if this reloc needs to be copied into the .loader
		 section.  */
	      switch (rel->r_type)
		{
		default:
		  if (h == NULL
		      || h->root.type == bfd_link_hash_defined
		      || h->root.type == bfd_link_hash_defweak
		      || h->root.type == bfd_link_hash_common
		      || ((h->flags & XCOFF_CALLED) != 0
			  && (h->root.type == bfd_link_hash_undefined
			      || h->root.type == bfd_link_hash_undefweak)
			  && h->root.root.string[0] == '.'
			  && h->descriptor != NULL
			  && ((h->descriptor->flags & XCOFF_DEF_DYNAMIC) != 0
			      || ((h->descriptor->flags & XCOFF_IMPORT) != 0
				  && (h->descriptor->flags
				      & XCOFF_DEF_REGULAR) == 0))))
		    break;
		  /* Fall through.  */
		case R_POS:
		case R_NEG:
		case R_RL:
		case R_RLA:
		  ++FUNC6 (info)->ldrel_count;
		  if (h != NULL)
		    h->flags |= XCOFF_LDREL;
		  break;
		case R_TOC:
		case R_GL:
		case R_TCL:
		case R_TRL:
		case R_TRLA:
		  /* We should never need a .loader reloc for a TOC
		     relative reloc.  */
		  break;
		}
	    }

	  if (! info->keep_memory
	      && FUNC1 (sec->owner, sec) != NULL
	      && FUNC1 (sec->owner, sec)->relocs != NULL
	      && ! FUNC1 (sec->owner, sec)->keep_relocs)
	    {
	      FUNC2 (FUNC1 (sec->owner, sec)->relocs);
	      FUNC1 (sec->owner, sec)->relocs = NULL;
	    }
	}
    }

  return TRUE;
}