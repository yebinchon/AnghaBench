#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;

/* Variables and functions */
 int FIRST_PSEUDO_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HARD_FRAME_POINTER_REGNUM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int LAST_VIRTUAL_REGISTER ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  QImode ; 
 int double_reg_address_ok ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ indirect_symref_ok ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pseudos_counted ; 
 int /*<<< orphan*/  reload_obstack ; 
 int /*<<< orphan*/  reload_startobj ; 
 scalar_t__ spill_indirect_levels ; 
 int /*<<< orphan*/  spilled_pseudos ; 

void
FUNC10 (void)
{
  int i;

  /* Often (MEM (REG n)) is still valid even if (REG n) is put on the stack.
     Set spill_indirect_levels to the number of levels such addressing is
     permitted, zero if it is not permitted at all.  */

  rtx tem
    = FUNC3 (Pmode,
		   FUNC4 (Pmode,
				 FUNC5 (Pmode,
					      LAST_VIRTUAL_REGISTER + 1),
				 FUNC0 (4)));
  spill_indirect_levels = 0;

  while (FUNC7 (QImode, tem))
    {
      spill_indirect_levels++;
      tem = FUNC3 (Pmode, tem);
    }

  /* See if indirect addressing is valid for (MEM (SYMBOL_REF ...)).  */

  tem = FUNC3 (Pmode, FUNC6 (Pmode, "foo"));
  indirect_symref_ok = FUNC7 (QImode, tem);

  /* See if reg+reg is a valid (and offsettable) address.  */

  for (i = 0; i < FIRST_PSEUDO_REGISTER; i++)
    {
      tem = FUNC4 (Pmode,
			  FUNC5 (Pmode, HARD_FRAME_POINTER_REGNUM),
			  FUNC5 (Pmode, i));

      /* This way, we make sure that reg+reg is an offsettable address.  */
      tem = FUNC9 (tem, 4);

      if (FUNC7 (QImode, tem))
	{
	  double_reg_address_ok = 1;
	  break;
	}
    }

  /* Initialize obstack for our rtl allocation.  */
  FUNC2 (&reload_obstack);
  reload_startobj = FUNC8 (&reload_obstack, 0);

  FUNC1 (&spilled_pseudos);
  FUNC1 (&pseudos_counted);
}