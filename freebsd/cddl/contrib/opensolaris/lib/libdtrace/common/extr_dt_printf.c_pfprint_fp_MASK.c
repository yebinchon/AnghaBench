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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_DMISMATCH ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,long double) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
	double n = (double)normal;
	long double ldn = (long double)normal;

	switch (size) {
	case sizeof (float):
		return (FUNC0(dtp, fp, format,
		    (double)*((float *)addr) / n));
	case sizeof (double):
		return (FUNC0(dtp, fp, format,
		    *((double *)addr) / n));
#if !defined(__arm__) && !defined(__powerpc__) && \
    !defined(__mips__) && !defined(__riscv)
	case sizeof (long double):
		return (FUNC0(dtp, fp, format,
		    *((long double *)addr) / ldn));
#endif
	default:
		return (FUNC1(dtp, EDT_DMISMATCH));
	}
}