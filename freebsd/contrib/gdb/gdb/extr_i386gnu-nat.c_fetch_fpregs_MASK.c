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
typedef  int /*<<< orphan*/  thread_state_t ;
struct proc {int /*<<< orphan*/  port; } ;
struct i386_float_state {int /*<<< orphan*/  hw_state; int /*<<< orphan*/  initialized; } ;
typedef  int /*<<< orphan*/  mach_msg_type_number_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 int FOP_REGNUM ; 
 int FP0_REGNUM ; 
 int /*<<< orphan*/  current_regcache ; 
 int /*<<< orphan*/  i386_FLOAT_STATE ; 
 int /*<<< orphan*/  i386_FLOAT_STATE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5 (struct proc *thread)
{
  mach_msg_type_number_t count = i386_FLOAT_STATE_COUNT;
  struct i386_float_state state;
  error_t err;

  err = FUNC3 (thread->port, i386_FLOAT_STATE,
			  (thread_state_t) &state, &count);
  if (err)
    {
      FUNC4 ("Couldn't fetch floating-point state from %s",
	       FUNC1 (thread));
      return;
    }

  if (!state.initialized)
    /* The floating-point state isn't initialized.  */
    {
      int i;

      for (i = FP0_REGNUM; i <= FOP_REGNUM; i++)
	FUNC2 (i, NULL);

      return;
    }

  /* Supply the floating-point registers.  */
  FUNC0 (current_regcache, -1, state.hw_state);
}