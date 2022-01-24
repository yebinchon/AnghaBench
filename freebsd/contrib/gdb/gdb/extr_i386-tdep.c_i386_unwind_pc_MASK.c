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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  PC_REGNUM ; 
 int /*<<< orphan*/  builtin_type_void_func_ptr ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static CORE_ADDR
FUNC2 (struct gdbarch *gdbarch, struct frame_info *next_frame)
{
  char buf[8];

  FUNC1 (next_frame, PC_REGNUM, buf);
  return FUNC0 (buf, builtin_type_void_func_ptr);
}