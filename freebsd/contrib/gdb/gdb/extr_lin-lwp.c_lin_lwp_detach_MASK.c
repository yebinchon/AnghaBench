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
struct TYPE_2__ {int /*<<< orphan*/  (* to_detach ) (char*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  blocked_mask ; 
 TYPE_1__ child_ops ; 
 int /*<<< orphan*/  detach_callback ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  inferior_ptid ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  normal_mask ; 
 int /*<<< orphan*/  null_ptid ; 
 int num_lwps ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  trap_ptid ; 

__attribute__((used)) static void
FUNC8 (char *args, int from_tty)
{
  FUNC3 (detach_callback, NULL);

  /* Only the initial process should be left right now.  */
  FUNC1 (num_lwps == 1);

  trap_ptid = null_ptid;

  /* Destroy LWP info; it's no longer valid.  */
  FUNC2 ();

  /* Restore the original signal mask.  */
  FUNC6 (SIG_SETMASK, &normal_mask, NULL);
  FUNC5 (&blocked_mask);

  inferior_ptid = FUNC4 (FUNC0 (inferior_ptid));
  child_ops.to_detach (args, from_tty);
}