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
struct gdbarch {struct frame_id (* unwind_dummy_id ) (struct gdbarch*,struct frame_info*) ;} ;
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 struct frame_id FUNC2 (struct gdbarch*,struct frame_info*) ; 

struct frame_id
FUNC3 (struct gdbarch *gdbarch, struct frame_info *info)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->unwind_dummy_id != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_unwind_dummy_id called\n");
  return gdbarch->unwind_dummy_id (gdbarch, info);
}