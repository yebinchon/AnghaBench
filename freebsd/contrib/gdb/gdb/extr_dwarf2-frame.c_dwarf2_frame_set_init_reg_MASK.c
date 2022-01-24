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
struct dwarf2_frame_ops {void (* init_reg ) (struct gdbarch*,int,struct dwarf2_frame_state_reg*) ;} ;

/* Variables and functions */
 struct dwarf2_frame_ops* FUNC0 (struct gdbarch*) ; 

void
FUNC1 (struct gdbarch *gdbarch,
			   void (*init_reg) (struct gdbarch *, int,
					     struct dwarf2_frame_state_reg *))
{
  struct dwarf2_frame_ops *ops;

  ops = FUNC0 (gdbarch);
  ops->init_reg = init_reg;
}