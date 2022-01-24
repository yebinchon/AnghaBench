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
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  EDT_NOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (void const*,size_t) ; 

__attribute__((used)) static int
FUNC4(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
	char *s;
	int n;

	if ((s = FUNC3(addr, size)) == NULL)
		return (FUNC1(dtp, EDT_NOMEM));

	n = FUNC0(dtp, fp, format, s);
	FUNC2(s);
	return (n);
}