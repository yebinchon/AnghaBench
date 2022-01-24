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
struct TYPE_2__ {int /*<<< orphan*/  static_pass_number; } ;

/* Variables and functions */
 int /*<<< orphan*/  TV_DUMP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_file ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 scalar_t__ optimize ; 
 TYPE_1__ pass_global_alloc ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int reload_completed ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC9 (void)
{
  bool failure;

  /* If optimizing, allocate remaining pseudo-regs.  Do the reload
     pass fixing up any insns that are invalid.  */

  if (optimize)
    failure = FUNC5 ();
  else
    {
      FUNC0 (FUNC4 ());
      failure = FUNC6 (FUNC4 (), 0);
    }

  if (FUNC1 (pass_global_alloc.static_pass_number))
    {
      FUNC8 (TV_DUMP);
      FUNC2 (dump_file);
      FUNC7 (TV_DUMP);
    }

  FUNC3 (reload_completed || failure);
  reload_completed = !failure;
  return 0;
}