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
struct gdbarch_tdep {int jb_pc_offset; } ;
struct gdbarch_info {int dummy; } ;
struct gdbarch {int dummy; } ;

/* Variables and functions */
 struct gdbarch_tdep* FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info,struct gdbarch*) ; 

__attribute__((used)) static void
FUNC2 (struct gdbarch_info info, struct gdbarch *gdbarch)
{
  struct gdbarch_tdep *tdep = FUNC0 (gdbarch);

  /* GNU uses ELF.  */
  FUNC1 (info, gdbarch);

  tdep->jb_pc_offset = 20;	/* From <bits/setjmp.h>.  */
}