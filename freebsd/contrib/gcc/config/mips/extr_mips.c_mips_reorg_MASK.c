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

/* Variables and functions */
 scalar_t__ TARGET_EXPLICIT_RELOCS ; 
 scalar_t__ TARGET_MIPS16 ; 
 scalar_t__ TARGET_VR4130_ALIGN ; 
 scalar_t__ TUNE_MIPS4130 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ mips_flag_delayed_branch ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void
FUNC5 (void)
{
  if (TARGET_MIPS16)
    FUNC2 ();
  else if (TARGET_EXPLICIT_RELOCS)
    {
      if (mips_flag_delayed_branch)
	FUNC0 (FUNC1 ());
      FUNC3 ();
      if (TUNE_MIPS4130 && TARGET_VR4130_ALIGN)
	FUNC4 ();
    }
}