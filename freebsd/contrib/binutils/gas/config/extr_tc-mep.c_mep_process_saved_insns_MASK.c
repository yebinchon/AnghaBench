#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  fields; int /*<<< orphan*/  buffer; int /*<<< orphan*/  insn; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int MAX_SAVED_FIXUP_CHAINS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int num_insns_saved ; 
 TYPE_1__* saved_insns ; 

__attribute__((used)) static void
FUNC7 (void)
{
  int i;

  FUNC4 (MAX_SAVED_FIXUP_CHAINS - 1);

  /* We have to check for valid scheduling here. */
  FUNC6 ();

  /* If the last call didn't cause assembly to terminate, we have
     a valid vliw insn/insn pair saved. Restore this instructions'
     fixups and process the insns. */
  for (i = 0;i<num_insns_saved;i++)
    {
      FUNC3 (i);
      FUNC1 (saved_insns[i].insn, saved_insns[i].buffer,
			    FUNC0 (& saved_insns[i].fields),
			    1, NULL);
    }
  FUNC3 (MAX_SAVED_FIXUP_CHAINS - 1);

  /* Clear the fixups and reset the number insn saved to 0. */
  FUNC2 ();
  num_insns_saved = 0;
  FUNC5 ();
}