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
struct gdbarch {int /*<<< orphan*/  sigtramp_start; } ;
typedef  int /*<<< orphan*/  gdbarch_sigtramp_start_ftype ;

/* Variables and functions */

void
FUNC0 (struct gdbarch *gdbarch,
                            gdbarch_sigtramp_start_ftype sigtramp_start)
{
  gdbarch->sigtramp_start = sigtramp_start;
}