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
 scalar_t__ HAVE_trap ; 
 int /*<<< orphan*/  LCT_NORETURN ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  abort_libfunc ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void
FUNC4 (void)
{
#ifdef HAVE_trap
  if (HAVE_trap)
    emit_insn (gen_trap ());
  else
#endif
    FUNC2 (abort_libfunc, LCT_NORETURN, VOIDmode, 0);
  FUNC0 ();
}