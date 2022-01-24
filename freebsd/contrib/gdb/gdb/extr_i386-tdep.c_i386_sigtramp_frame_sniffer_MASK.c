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
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 struct frame_unwind const i386_sigtramp_frame_unwind ; 

__attribute__((used)) static const struct frame_unwind *
FUNC4 (struct frame_info *next_frame)
{
  CORE_ADDR pc = FUNC2 (next_frame);
  char *name;

  /* We shouldn't even bother to try if the OSABI didn't register
     a sigcontext_addr handler.  */
  if (!FUNC3 (current_gdbarch)->sigcontext_addr)
    return NULL;

  FUNC1 (pc, &name, NULL, NULL);
  if (FUNC0 (pc, name))
    return &i386_sigtramp_frame_unwind;

  return NULL;
}