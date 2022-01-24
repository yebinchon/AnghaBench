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
struct gdbarch {int /*<<< orphan*/  (* smash_text_address ) (int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

CORE_ADDR
FUNC3 (struct gdbarch *gdbarch, CORE_ADDR addr)
{
  FUNC1 (gdbarch != NULL);
  FUNC1 (gdbarch->smash_text_address != NULL);
  if (gdbarch_debug >= 2)
    FUNC0 (gdb_stdlog, "gdbarch_smash_text_address called\n");
  return gdbarch->smash_text_address (addr);
}