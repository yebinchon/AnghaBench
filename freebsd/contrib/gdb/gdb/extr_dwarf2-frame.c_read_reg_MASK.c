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
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct frame_info*,int,char*) ; 
 struct gdbarch* FUNC4 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,int) ; 

__attribute__((used)) static CORE_ADDR
FUNC6 (void *baton, int reg)
{
  struct frame_info *next_frame = (struct frame_info *) baton;
  struct gdbarch *gdbarch = FUNC4 (next_frame);
  int regnum;
  char *buf;

  regnum = FUNC0 (reg);

  buf = (char *) FUNC1 (FUNC5 (gdbarch, regnum));
  FUNC3 (next_frame, regnum, buf);
  return FUNC2 (buf, builtin_type_void_data_ptr);
}