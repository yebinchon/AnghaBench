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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int hrtime_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int NANOSEC ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static int
FUNC3(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
	hrtime_t time = *((uint64_t *)addr);
	time_t sec = (time_t)(time / NANOSEC);
	struct tm tm;
	char buf[64];

	(void) FUNC1(&sec, &tm);
	(void) FUNC2(buf, sizeof (buf), "%a, %d %b %G %T %Z", &tm);
	return (FUNC0(dtp, fp, format, buf));
}