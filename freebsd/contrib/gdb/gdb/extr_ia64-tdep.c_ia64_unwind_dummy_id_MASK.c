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
struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  IA64_BSP_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct frame_id FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct frame_info*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  gdb_stdlog ; 
 int gdbarch_debug ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sp_regnum ; 

__attribute__((used)) static struct frame_id
FUNC6 (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  char buf[8];
  CORE_ADDR sp, bsp;

  FUNC4 (next_frame, sp_regnum, buf);
  sp = FUNC0 (buf, 8);

  FUNC4 (next_frame, IA64_BSP_REGNUM, buf);
  bsp = FUNC0 (buf, 8);

  if (gdbarch_debug >= 1)
    FUNC1 (gdb_stdlog,
			"dummy frame id: code 0x%s, stack 0x%s, special 0x%s\n",
			FUNC5 (FUNC3 (next_frame)), 
			FUNC5 (sp), FUNC5 (bsp));

  return FUNC2 (sp, FUNC3 (next_frame), bsp);
}