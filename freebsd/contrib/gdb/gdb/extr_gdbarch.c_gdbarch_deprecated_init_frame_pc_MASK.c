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
struct gdbarch {int /*<<< orphan*/  (* deprecated_init_frame_pc ) (int,struct frame_info*) ;} ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (int,struct frame_info*) ; 

CORE_ADDR
FUNC3 (struct gdbarch *gdbarch, int fromleaf, struct frame_info *prev)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_init_frame_pc != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_init_frame_pc called\n");
  return gdbarch->deprecated_init_frame_pc (fromleaf, prev);
}