#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
struct internal_ldrel {int l_symndx; int /*<<< orphan*/  l_vaddr; } ;
struct internal_ldhdr {int l_nreloc; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
struct TYPE_20__ {int flags; } ;
typedef  TYPE_1__ bfd ;
typedef  int /*<<< orphan*/  asymbol ;
struct TYPE_21__ {int /*<<< orphan*/ ** symbol_ptr_ptr; } ;
typedef  TYPE_2__ asection ;
struct TYPE_22__ {int /*<<< orphan*/  howto; scalar_t__ addend; int /*<<< orphan*/  address; int /*<<< orphan*/ ** sym_ptr_ptr; } ;
typedef  TYPE_3__ arelent ;
struct TYPE_23__ {int /*<<< orphan*/ * contents; } ;

/* Variables and functions */
 int DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_3__* FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  bfd_error_bad_value ; 
 int /*<<< orphan*/  bfd_error_invalid_operation ; 
 int /*<<< orphan*/  bfd_error_no_symbols ; 
 TYPE_2__* FUNC2 (TYPE_1__*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_1__*,struct internal_ldhdr*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,struct internal_ldhdr*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,struct internal_ldrel*) ; 
 TYPE_6__* FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_2__*) ; 

long
FUNC11 (bfd *abfd,
				       arelent **prelocs,
				       asymbol **syms)
{
  asection *lsec;
  bfd_byte *contents;
  struct internal_ldhdr ldhdr;
  arelent *relbuf;
  bfd_byte *elrel, *elrelend;

  if ((abfd->flags & DYNAMIC) == 0)
    {
      FUNC3 (bfd_error_invalid_operation);
      return -1;
    }

  lsec = FUNC2 (abfd, ".loader");
  if (lsec == NULL)
    {
      FUNC3 (bfd_error_no_symbols);
      return -1;
    }

  if (! FUNC10 (abfd, lsec))
    return -1;
  contents = FUNC9 (abfd, lsec)->contents;

  FUNC7 (abfd, contents, &ldhdr);

  relbuf = FUNC1 (abfd, ldhdr.l_nreloc * sizeof (arelent));
  if (relbuf == NULL)
    return -1;

  elrel = contents + FUNC6(abfd, &ldhdr);

  elrelend = elrel + ldhdr.l_nreloc * FUNC5(abfd);
  for (; elrel < elrelend; elrel += FUNC5(abfd), relbuf++,
	 prelocs++)
    {
      struct internal_ldrel ldrel;

      FUNC8 (abfd, elrel, &ldrel);

      if (ldrel.l_symndx >= 3)
	relbuf->sym_ptr_ptr = syms + (ldrel.l_symndx - 3);
      else
	{
	  const char *name;
	  asection *sec;

	  switch (ldrel.l_symndx)
	    {
	    case 0:
	      name = ".text";
	      break;
	    case 1:
	      name = ".data";
	      break;
	    case 2:
	      name = ".bss";
	      break;
	    default:
	      FUNC0 ();
	      break;
	    }

	  sec = FUNC2 (abfd, name);
	  if (sec == NULL)
	    {
	      FUNC3 (bfd_error_bad_value);
	      return -1;
	    }

	  relbuf->sym_ptr_ptr = sec->symbol_ptr_ptr;
	}

      relbuf->address = ldrel.l_vaddr;
      relbuf->addend = 0;

      /* Most dynamic relocs have the same type.  FIXME: This is only
	 correct if ldrel.l_rtype == 0.  In other cases, we should use
	 a different howto.  */
      relbuf->howto = FUNC4(abfd);

      /* FIXME: We have no way to record the l_rsecnm field.  */

      *prelocs = relbuf;
    }

  *prelocs = NULL;

  return ldhdr.l_nreloc;
}