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
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sigcontext_addr; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct frame_unwind const amd64_sigtramp_frame_unwind ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct frame_unwind *
FUNC5 (struct frame_info *next_frame)
{
  CORE_ADDR pc = FUNC2 (next_frame);
  char *name;

  FUNC1 (pc, &name, NULL, NULL);
  if (FUNC0 (pc, name))
    {
      FUNC3 (FUNC4 (current_gdbarch)->sigcontext_addr);

      return &amd64_sigtramp_frame_unwind;
    }

  return NULL;
}