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
struct ui_file {int dummy; } ;
struct gdbarch {int dummy; } ;
struct frame_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ARM_FPS_REGNUM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC4 (struct gdbarch *gdbarch, struct ui_file *file,
		      struct frame_info *frame, const char *args)
{
  unsigned long status = FUNC3 (ARM_FPS_REGNUM);
  int type;

  type = (status >> 24) & 127;
  FUNC2 ("%s FPU type %d\n",
	  (status & (1 << 31)) ? "Hardware" : "Software",
	  type);
  FUNC0 ("mask: ", stdout);
  FUNC1 (status >> 16);
  FUNC0 ("flags: ", stdout);
  FUNC1 (status);
}