#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int offsetT ;
struct TYPE_4__ {int fr_offset; int /*<<< orphan*/  fr_subtype; scalar_t__ fr_fix; scalar_t__ fr_address; int /*<<< orphan*/  fr_symbol; } ;
typedef  TYPE_1__ fragS ;
typedef  scalar_t__ bfd_boolean ;
typedef  int /*<<< orphan*/  asection ;
typedef  scalar_t__ addressT ;
struct TYPE_5__ {scalar_t__ isa; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ ISA_MIPS1 ; 
 scalar_t__ NO_PIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 TYPE_3__ mips_opts ; 
 scalar_t__ mips_pic ; 

__attribute__((used)) static int
FUNC8 (fragS *fragp, asection *sec, int update)
{
  bfd_boolean toofar;
  int length;

  if (fragp
      && FUNC7 (fragp->fr_symbol)
      && sec == FUNC5 (fragp->fr_symbol))
    {
      addressT addr;
      offsetT val;

      val = FUNC6 (fragp->fr_symbol) + fragp->fr_offset;

      addr = fragp->fr_address + fragp->fr_fix + 4;

      val -= addr;

      toofar = val < - (0x8000 << 2) || val >= (0x8000 << 2);
    }
  else if (fragp)
    /* If the symbol is not defined or it's in a different segment,
       assume the user knows what's going on and emit a short
       branch.  */
    toofar = FALSE;
  else
    toofar = TRUE;

  if (fragp && update && toofar != FUNC3 (fragp->fr_subtype))
    fragp->fr_subtype
      = FUNC0 (FUNC4 (fragp->fr_subtype),
			     FUNC1 (fragp->fr_subtype),
			     FUNC2 (fragp->fr_subtype),
			     toofar);

  length = 4;
  if (toofar)
    {
      if (fragp ? FUNC1 (fragp->fr_subtype) : (update > 0))
	length += 8;

      if (mips_pic != NO_PIC)
	{
	  /* Additional space for PIC loading of target address.  */
	  length += 8;
	  if (mips_opts.isa == ISA_MIPS1)
	    /* Additional space for $at-stabilizing nop.  */
	    length += 4;
	}

      /* If branch is conditional.  */
      if (fragp ? !FUNC4 (fragp->fr_subtype) : (update >= 0))
	length += 8;
    }

  return length;
}