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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ flag_signed_overflow_ok ; 
 int /*<<< orphan*/  gas_cgen_cpu_desc ; 

void
FUNC2 ()
{
  if (flag_signed_overflow_ok)
    FUNC1 (gas_cgen_cpu_desc);
  else
    FUNC0 (gas_cgen_cpu_desc);
}