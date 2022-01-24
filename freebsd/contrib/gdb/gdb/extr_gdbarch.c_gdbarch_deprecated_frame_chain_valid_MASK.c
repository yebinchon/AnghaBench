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
struct gdbarch {int (* deprecated_frame_chain_valid ) (int /*<<< orphan*/ ,struct frame_info*) ;} ;
struct frame_info {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int FUNC2 (int /*<<< orphan*/ ,struct frame_info*) ; 

int
FUNC3 (struct gdbarch *gdbarch, CORE_ADDR chain, struct frame_info *thisframe)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->deprecated_frame_chain_valid != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_deprecated_frame_chain_valid called\n");
  return gdbarch->deprecated_frame_chain_valid (chain, thisframe);
}