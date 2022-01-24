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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint16_t ;
struct servent {char* s_name; } ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*) ; 
 struct servent* FUNC1 (int,int /*<<< orphan*/ *,struct servent*,char*,int,...) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,int) ; 

__attribute__((used)) static int
FUNC4(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
	uint16_t port = FUNC2(*((uint16_t *)addr));
	char buf[256];
	struct servent *sv, res;

#ifdef illumos
	if ((sv = getservbyport_r(port, NULL, &res, buf, sizeof (buf))) != NULL)
#else
	if (FUNC1(port, NULL, &res, buf, sizeof (buf), &sv) > 0)
#endif
		return (FUNC0(dtp, fp, format, sv->s_name));

	(void) FUNC3(buf, sizeof (buf), "%d", *((uint16_t *)addr));
	return (FUNC0(dtp, fp, format, buf));
}