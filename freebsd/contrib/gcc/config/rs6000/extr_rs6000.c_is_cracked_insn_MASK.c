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
typedef  enum attr_type { ____Placeholder_attr_type } attr_type ;

/* Variables and functions */
 scalar_t__ CLOBBER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TYPE_COMPARE ; 
 int TYPE_DELAYED_COMPARE ; 
 int TYPE_DELAYED_CR ; 
 int TYPE_FPLOAD_U ; 
 int TYPE_FPLOAD_UX ; 
 int TYPE_FPSTORE_U ; 
 int TYPE_FPSTORE_UX ; 
 int TYPE_IDIV ; 
 int TYPE_IMUL_COMPARE ; 
 int TYPE_INSERT_WORD ; 
 int TYPE_LDIV ; 
 int TYPE_LMUL_COMPARE ; 
 int TYPE_LOAD_EXT ; 
 int TYPE_LOAD_U ; 
 int TYPE_STORE_U ; 
 scalar_t__ USE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ rs6000_sched_groups ; 

__attribute__((used)) static bool
FUNC4 (rtx insn)
{
  if (!insn || !FUNC1 (insn)
      || FUNC0 (FUNC2 (insn)) == USE
      || FUNC0 (FUNC2 (insn)) == CLOBBER)
    return false;

  if (rs6000_sched_groups)
    {
      enum attr_type type = FUNC3 (insn);
      if (type == TYPE_LOAD_U || type == TYPE_STORE_U
	  || type == TYPE_FPLOAD_U || type == TYPE_FPSTORE_U
	  || type == TYPE_FPLOAD_UX || type == TYPE_FPSTORE_UX
	  || type == TYPE_LOAD_EXT || type == TYPE_DELAYED_CR
	  || type == TYPE_COMPARE || type == TYPE_DELAYED_COMPARE
	  || type == TYPE_IMUL_COMPARE || type == TYPE_LMUL_COMPARE
	  || type == TYPE_IDIV || type == TYPE_LDIV
	  || type == TYPE_INSERT_WORD)
	return true;
    }

  return false;
}