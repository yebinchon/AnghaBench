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
typedef  int /*<<< orphan*/  va_list ;

/* Variables and functions */
 int /*<<< orphan*/  bad_path ; 
 char* FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (char*,size_t,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static char *FUNC7(char *buf, size_t n, const char *fmt, va_list args)
{
	const char *perf_dir = FUNC1();
	size_t len;

	len = FUNC5(perf_dir);
	if (n < len + 1)
		goto bad;
	FUNC3(buf, perf_dir, len);
	if (len && !FUNC2(perf_dir[len-1]))
		buf[len++] = '/';
	len += FUNC6(buf + len, n - len, fmt, args);
	if (len >= n)
		goto bad;
	return FUNC0(buf);
bad:
	FUNC4(buf, bad_path, n);
	return buf;
}