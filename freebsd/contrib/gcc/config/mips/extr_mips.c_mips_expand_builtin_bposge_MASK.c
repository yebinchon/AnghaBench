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
typedef  enum mips_builtin_type { ____Placeholder_mips_builtin_type } mips_builtin_type ;

/* Variables and functions */
 int /*<<< orphan*/  CCDSP_PO_REGNUM ; 
 int /*<<< orphan*/  CCDSPmode ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int MIPS_BUILTIN_BPOSGE32 ; 
 scalar_t__ SImode ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static rtx
FUNC7 (enum mips_builtin_type builtin_type, rtx target)
{
  rtx condition, cmp_result;
  int cmp_value;

  if (target == 0 || FUNC1 (target) != SImode)
    target = FUNC3 (SImode);

  cmp_result = FUNC5 (CCDSPmode, CCDSP_PO_REGNUM);

  if (builtin_type == MIPS_BUILTIN_BPOSGE32)
    cmp_value = 32;
  else
    FUNC2 (0);

  condition = FUNC4 (VOIDmode, cmp_result, FUNC0 (cmp_value));
  return FUNC6 (condition, target,
				       const1_rtx, const0_rtx);
}