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
typedef  scalar_t__ rtx ;
typedef  int HOST_WIDE_INT ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ ADDR_REGS ; 
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* HOST_WIDE_INT_PRINT_DEC ; 
 scalar_t__ REG ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char** reg_names ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__*,int*) ; 

__attribute__((used)) static void
FUNC7 (FILE *file, rtx op)
{
  HOST_WIDE_INT offset;
  rtx base;

  /* Extract base register and offset.  */
  if (!FUNC6 (op, &base, &offset))
    FUNC5 ();

  /* Sanity check.  */
  if (base)
    {
      FUNC4 (FUNC0 (base) == REG);
      FUNC4 (FUNC1 (base) < FIRST_PSEUDO_REGISTER);
      FUNC4 (FUNC2 (FUNC1 (base)) == ADDR_REGS);
    }

  /* Offsets are constricted to twelve bits.  */
  FUNC3 (file, HOST_WIDE_INT_PRINT_DEC, offset & ((1 << 12) - 1));
  if (base)
    FUNC3 (file, "(%s)", reg_names[FUNC1 (base)]);
}