#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int fr_var; int /*<<< orphan*/  fr_subtype; int /*<<< orphan*/  fr_symbol; } ;
typedef  TYPE_1__ fragS ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ NO_PIC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RELAX_USE_SECOND ; 
 scalar_t__ SVR4_PIC ; 
 scalar_t__ VXWORKS_PIC ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ mips_pic ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC9 (fragS *fragp, asection *segtype)
{
  int change;

  if (FUNC0 (fragp->fr_subtype))
    {

      fragp->fr_var = FUNC8 (fragp, segtype, FALSE);

      return fragp->fr_var;
    }

  if (FUNC3 (fragp->fr_subtype))
    /* We don't want to modify the EXTENDED bit here; it might get us
       into infinite loops.  We change it only in mips_relax_frag().  */
    return (FUNC2 (fragp->fr_subtype) ? 4 : 2);

  if (mips_pic == NO_PIC)
    change = FUNC6 (fragp->fr_symbol, 0);
  else if (mips_pic == SVR4_PIC)
    change = FUNC7 (fragp->fr_symbol, segtype);
  else if (mips_pic == VXWORKS_PIC)
    /* For vxworks, GOT16 relocations never have a corresponding LO16.  */
    change = 0;
  else
    FUNC5 ();

  if (change)
    {
      fragp->fr_subtype |= RELAX_USE_SECOND;
      return -FUNC1 (fragp->fr_subtype);
    }
  else
    return -FUNC4 (fragp->fr_subtype);
}