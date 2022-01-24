#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_9__ ;
typedef  struct TYPE_22__   TYPE_8__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_10__ ;

/* Type definitions */
struct bfd_link_info {TYPE_8__* hash; TYPE_2__* callbacks; } ;
struct TYPE_19__ {scalar_t__ size; TYPE_10__* p; } ;
struct TYPE_16__ {int /*<<< orphan*/ * abfd; } ;
struct TYPE_20__ {TYPE_4__ c; TYPE_1__ undef; } ;
struct bfd_link_hash_entry {scalar_t__ type; TYPE_5__ u; } ;
struct bfd_link_hash_common_entry {int dummy; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_21__ {int flags; TYPE_9__* section; } ;
typedef  TYPE_6__ asymbol ;
struct TYPE_23__ {char* name; } ;
struct TYPE_22__ {int /*<<< orphan*/  table; } ;
struct TYPE_18__ {int /*<<< orphan*/  flags; } ;
struct TYPE_17__ {int /*<<< orphan*/  (* add_archive_element ) (struct bfd_link_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_15__ {unsigned int alignment_power; TYPE_3__* section; } ;

/* Variables and functions */
 int BSF_GLOBAL ; 
 int BSF_INDIRECT ; 
 int BSF_WEAK ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEC_ALLOC ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_6__** FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 scalar_t__ FUNC3 (TYPE_6__*) ; 
 TYPE_9__* bfd_com_section_ptr ; 
 TYPE_10__* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_9__*) ; 
 scalar_t__ bfd_link_hash_common ; 
 struct bfd_link_hash_entry* FUNC6 (TYPE_8__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bfd_link_hash_undefined ; 
 unsigned int FUNC7 (scalar_t__) ; 
 void* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct bfd_link_info*,int,TYPE_6__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct bfd_link_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct bfd_link_info*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC13 (bfd *abfd,
				    struct bfd_link_info *info,
				    bfd_boolean *pneeded,
				    bfd_boolean collect)
{
  asymbol **pp, **ppend;

  *pneeded = FALSE;

  if (! FUNC10 (abfd))
    return FALSE;

  pp = FUNC0 (abfd);
  ppend = pp + FUNC1 (abfd);
  for (; pp < ppend; pp++)
    {
      asymbol *p;
      struct bfd_link_hash_entry *h;

      p = *pp;

      /* We are only interested in globally visible symbols.  */
      if (! FUNC5 (p->section)
	  && (p->flags & (BSF_GLOBAL | BSF_INDIRECT | BSF_WEAK)) == 0)
	continue;

      /* We are only interested if we know something about this
	 symbol, and it is undefined or common.  An undefined weak
	 symbol (type bfd_link_hash_undefweak) is not considered to be
	 a reference when pulling files out of an archive.  See the
	 SVR4 ABI, p. 4-27.  */
      h = FUNC6 (info->hash, FUNC2 (p), FALSE,
				FALSE, TRUE);
      if (h == NULL
	  || (h->type != bfd_link_hash_undefined
	      && h->type != bfd_link_hash_common))
	continue;

      /* P is a symbol we are looking for.  */

      if (! FUNC5 (p->section))
	{
	  bfd_size_type symcount;
	  asymbol **symbols;

	  /* This object file defines this symbol, so pull it in.  */
	  if (! (*info->callbacks->add_archive_element) (info, abfd,
							 FUNC2 (p)))
	    return FALSE;
	  symcount = FUNC1 (abfd);
	  symbols = FUNC0 (abfd);
	  if (! FUNC9 (abfd, info, symcount,
					      symbols, collect))
	    return FALSE;
	  *pneeded = TRUE;
	  return TRUE;
	}

      /* P is a common symbol.  */

      if (h->type == bfd_link_hash_undefined)
	{
	  bfd *symbfd;
	  bfd_vma size;
	  unsigned int power;

	  symbfd = h->u.undef.abfd;
	  if (symbfd == NULL)
	    {
	      /* This symbol was created as undefined from outside
		 BFD.  We assume that we should link in the object
		 file.  This is for the -u option in the linker.  */
	      if (! (*info->callbacks->add_archive_element)
		  (info, abfd, FUNC2 (p)))
		return FALSE;
	      *pneeded = TRUE;
	      return TRUE;
	    }

	  /* Turn the symbol into a common symbol but do not link in
	     the object file.  This is how a.out works.  Object
	     formats that require different semantics must implement
	     this function differently.  This symbol is already on the
	     undefs list.  We add the section to a common section
	     attached to symbfd to ensure that it is in a BFD which
	     will be linked in.  */
	  h->type = bfd_link_hash_common;
	  h->u.c.p =
	    FUNC4 (&info->hash->table,
			       sizeof (struct bfd_link_hash_common_entry));
	  if (h->u.c.p == NULL)
	    return FALSE;

	  size = FUNC3 (p);
	  h->u.c.size = size;

	  power = FUNC7 (size);
	  if (power > 4)
	    power = 4;
	  h->u.c.p->alignment_power = power;

	  if (p->section == bfd_com_section_ptr)
	    h->u.c.p->section = FUNC8 (symbfd, "COMMON");
	  else
	    h->u.c.p->section = FUNC8 (symbfd,
							  p->section->name);
	  h->u.c.p->section->flags = SEC_ALLOC;
	}
      else
	{
	  /* Adjust the size of the common symbol if necessary.  This
	     is how a.out works.  Object formats that require
	     different semantics must implement this function
	     differently.  */
	  if (FUNC3 (p) > h->u.c.size)
	    h->u.c.size = FUNC3 (p);
	}
    }

  /* This archive element is not needed.  */
  return TRUE;
}