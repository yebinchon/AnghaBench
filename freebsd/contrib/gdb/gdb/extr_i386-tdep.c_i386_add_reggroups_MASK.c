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
struct gdbarch {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  all_reggroup ; 
 int /*<<< orphan*/  float_reggroup ; 
 int /*<<< orphan*/  general_reggroup ; 
 int /*<<< orphan*/  i386_mmx_reggroup ; 
 int /*<<< orphan*/  i386_sse_reggroup ; 
 int /*<<< orphan*/  FUNC0 (struct gdbarch*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  restore_reggroup ; 
 int /*<<< orphan*/  save_reggroup ; 
 int /*<<< orphan*/  system_reggroup ; 
 int /*<<< orphan*/  vector_reggroup ; 

__attribute__((used)) static void
FUNC1 (struct gdbarch *gdbarch)
{
  FUNC0 (gdbarch, i386_sse_reggroup);
  FUNC0 (gdbarch, i386_mmx_reggroup);
  FUNC0 (gdbarch, general_reggroup);
  FUNC0 (gdbarch, float_reggroup);
  FUNC0 (gdbarch, all_reggroup);
  FUNC0 (gdbarch, save_reggroup);
  FUNC0 (gdbarch, restore_reggroup);
  FUNC0 (gdbarch, vector_reggroup);
  FUNC0 (gdbarch, system_reggroup);
}