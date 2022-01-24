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
struct gdbarch {int deprecated_max_register_virtual_size; } ;

/* Variables and functions */

void
FUNC0 (struct gdbarch *gdbarch,
                                                  int deprecated_max_register_virtual_size)
{
  gdbarch->deprecated_max_register_virtual_size = deprecated_max_register_virtual_size;
}