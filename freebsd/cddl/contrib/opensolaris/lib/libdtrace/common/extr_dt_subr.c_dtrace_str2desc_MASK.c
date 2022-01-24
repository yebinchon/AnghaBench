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
typedef  int /*<<< orphan*/  dtrace_probespec_t ;
typedef  int /*<<< orphan*/  dtrace_probedesc_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC1(dtrace_hdl_t *dtp, dtrace_probespec_t spec,
    const char *s, dtrace_probedesc_t *pdp)
{
	return (FUNC0(dtp, spec, s, 0, NULL, pdp));
}