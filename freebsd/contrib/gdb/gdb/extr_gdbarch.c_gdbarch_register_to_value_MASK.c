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
struct type {int dummy; } ;
struct gdbarch {int /*<<< orphan*/  (* register_to_value ) (struct frame_info*,int,struct type*,void*) ;} ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (struct frame_info*,int,struct type*,void*) ; 

void
FUNC3 (struct gdbarch *gdbarch, struct frame_info *frame, int regnum, struct type *type, void *buf)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->register_to_value != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_register_to_value called\n");
  gdbarch->register_to_value (frame, regnum, type, buf);
}