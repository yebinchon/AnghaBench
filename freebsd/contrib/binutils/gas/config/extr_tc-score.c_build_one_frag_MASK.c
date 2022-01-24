#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct score_it {int size; int relax_size; int /*<<< orphan*/  relax_inst; int /*<<< orphan*/  type; int /*<<< orphan*/  instruction; } ;
struct TYPE_4__ {int /*<<< orphan*/  is_insn; } ;
struct TYPE_5__ {TYPE_1__ tc_frag_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ RELAX_PAD_BYTE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_2__* frag_now ; 
 scalar_t__ FUNC5 () ; 
 char* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int g_opt ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rs_machine_dependent ; 

__attribute__((used)) static void
FUNC9 (struct score_it one_inst)
{
  char *p;
  int relaxable_p = g_opt;
  int relax_size = 0;

  /* Start a new frag if frag_now is not empty.  */
  if (FUNC5 () != 0)
    {
      if (!frag_now->tc_frag_data.is_insn)
	FUNC7 (frag_now);

      FUNC4 (0);
    }
  FUNC2 (20);

  p = FUNC3 (one_inst.size);
  FUNC8 (p, one_inst.instruction, one_inst.size);

#ifdef OBJ_ELF
  dwarf2_emit_insn (one_inst.size);
#endif

  relaxable_p &= (one_inst.relax_size != 0);
  relax_size = relaxable_p ? one_inst.relax_size : 0;

  p = FUNC6 (rs_machine_dependent, relax_size + RELAX_PAD_BYTE, 0,
                FUNC0 (one_inst.size, one_inst.relax_size,
                              one_inst.type, 0, 0, relaxable_p),
                NULL, 0, NULL);

  if (relaxable_p)
    FUNC8 (p, one_inst.relax_inst, relax_size);
}