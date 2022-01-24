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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8 (rtx dest, rtx op1, rtx op2, rtx mask)
{
  rtx t, temp;
  enum machine_mode dest_mode = FUNC0 (dest);
  int vsel_insn_index  = FUNC7 (FUNC0 (dest));

  temp = FUNC3 (dest_mode);

  /* For each vector element, select op1 when mask is 1 otherwise
     select op2.  */
  t = FUNC5 (VOIDmode, temp,
		   FUNC6 (dest_mode,
				   FUNC4 (3, op2, op1, mask),
				   vsel_insn_index));
  FUNC1 (t);
  FUNC2 (dest, temp);
  return;
}