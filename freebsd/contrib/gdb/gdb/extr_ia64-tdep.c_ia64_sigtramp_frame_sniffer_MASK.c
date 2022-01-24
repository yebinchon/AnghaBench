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
struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*) ; 
 struct frame_unwind const ia64_sigtramp_frame_unwind ; 

__attribute__((used)) static const struct frame_unwind *
FUNC3 (struct frame_info *next_frame)
{
  char *name;
  CORE_ADDR pc = FUNC2 (next_frame);

  FUNC1 (pc, &name, NULL, NULL);
  if (FUNC0 (pc, name))
    return &ia64_sigtramp_frame_unwind;

  return NULL;
}