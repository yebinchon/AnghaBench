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
struct gdbarch {int /*<<< orphan*/  (* deprecated_get_saved_register ) (char*,int*,int /*<<< orphan*/ *,struct frame_info*,int,int*) ;} ;
struct frame_info {int dummy; } ;
typedef  enum lval_type { ____Placeholder_lval_type } lval_type ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (char*,int*,int /*<<< orphan*/ *,struct frame_info*,int,int*) ; 

void
FUNC3 (struct gdbarch *gdbarch, char *raw_buffer, int *optimized, CORE_ADDR *addrp, struct frame_info *frame, int regnum, enum lval_type *lval)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_get_saved_register != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_get_saved_register called\n");
  gdbarch->deprecated_get_saved_register (raw_buffer, optimized, addrp, frame, regnum, lval);
}