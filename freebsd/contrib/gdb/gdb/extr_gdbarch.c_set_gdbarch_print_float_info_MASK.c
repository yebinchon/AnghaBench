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
struct gdbarch {int /*<<< orphan*/  print_float_info; } ;
typedef  int /*<<< orphan*/  gdbarch_print_float_info_ftype ;

/* Variables and functions */

void
FUNC0 (struct gdbarch *gdbarch,
                              gdbarch_print_float_info_ftype print_float_info)
{
  gdbarch->print_float_info = print_float_info;
}