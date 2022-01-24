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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_DMISMATCH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int const) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
	const uint64_t *data = addr;

	if (size != sizeof (uint64_t) * 2)
		return (FUNC1(dtp, EDT_DMISMATCH));

	return (FUNC0(dtp, fp, format,
	    data[0] ? data[1] / normal / data[0] : 0));
}