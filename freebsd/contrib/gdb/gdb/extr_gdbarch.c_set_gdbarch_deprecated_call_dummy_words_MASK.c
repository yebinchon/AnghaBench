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
struct gdbarch {int /*<<< orphan*/ * deprecated_call_dummy_words; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */

void
FUNC0 (struct gdbarch *gdbarch,
                                         LONGEST * deprecated_call_dummy_words)
{
  gdbarch->deprecated_call_dummy_words = deprecated_call_dummy_words;
}