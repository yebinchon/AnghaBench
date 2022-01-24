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
typedef  int /*<<< orphan*/  subsegT ;
typedef  int /*<<< orphan*/  segT ;

/* Variables and functions */
 scalar_t__ REG_TYPE_FIRST ; 
 scalar_t__ REG_TYPE_MAX ; 
 int SEC_DEBUGGING ; 
 int SEC_READONLY ; 
 int SEC_RELOC ; 
 int /*<<< orphan*/  TARGET_ARCH ; 
 scalar_t__ USE_GLOBAL_POINTER_OPT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ all_reg_maps ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * dependency_insn_hsh ; 
 int /*<<< orphan*/  g_switch_value ; 
 void* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  now_seg ; 
 int /*<<< orphan*/  now_subseg ; 
 int /*<<< orphan*/  pdr_seg ; 
 int /*<<< orphan*/ * score_ops_hsh ; 
 int /*<<< orphan*/  stdoutput ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC13 (void)
{
  unsigned int i;
  segT seg;
  subsegT subseg;

  if ((score_ops_hsh = FUNC9 ()) == NULL)
    FUNC1 (FUNC0("virtual memory exhausted"));

  FUNC8 ();

  if ((dependency_insn_hsh = FUNC9 ()) == NULL)
    FUNC1 (FUNC0("virtual memory exhausted"));

  FUNC6 ();

  for (i = (int)REG_TYPE_FIRST; i < (int)REG_TYPE_MAX; i++)
    FUNC7 (all_reg_maps + i);

  /* Initialize dependency vector.  */
  FUNC10 ();

  FUNC2 (stdoutput, TARGET_ARCH, 0);
  seg = now_seg;
  subseg = now_subseg;
  pdr_seg = FUNC11 (".pdr", (subsegT) 0);
  (void)FUNC5 (stdoutput, pdr_seg, SEC_READONLY | SEC_RELOC | SEC_DEBUGGING);
  (void)FUNC4 (stdoutput, pdr_seg, 2);
  FUNC12 (seg, subseg);

  if (USE_GLOBAL_POINTER_OPT)
    FUNC3 (stdoutput, g_switch_value);
}