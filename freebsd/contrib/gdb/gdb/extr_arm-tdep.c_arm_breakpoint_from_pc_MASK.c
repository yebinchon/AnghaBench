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
struct gdbarch_tdep {int thumb_breakpoint_size; unsigned char const* thumb_breakpoint; int arm_breakpoint_size; unsigned char const* arm_breakpoint; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 struct gdbarch_tdep* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static const unsigned char *
FUNC3 (CORE_ADDR *pcptr, int *lenptr)
{
  struct gdbarch_tdep *tdep = FUNC2 (current_gdbarch);

  if (FUNC1 (*pcptr))
    {
      *pcptr = FUNC0 (*pcptr);
      *lenptr = tdep->thumb_breakpoint_size;
      return tdep->thumb_breakpoint;
    }
  else
    {
      *lenptr = tdep->arm_breakpoint_size;
      return tdep->arm_breakpoint;
    }
}