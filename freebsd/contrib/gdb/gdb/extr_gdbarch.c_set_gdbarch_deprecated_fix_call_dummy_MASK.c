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
struct gdbarch {int /*<<< orphan*/  deprecated_fix_call_dummy; } ;
typedef  int /*<<< orphan*/  gdbarch_deprecated_fix_call_dummy_ftype ;

/* Variables and functions */

void
FUNC0 (struct gdbarch *gdbarch,
                                       gdbarch_deprecated_fix_call_dummy_ftype deprecated_fix_call_dummy)
{
  gdbarch->deprecated_fix_call_dummy = deprecated_fix_call_dummy;
}