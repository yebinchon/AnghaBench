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
struct Buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct Buf* FUNC1 (struct Buf*,char*) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,size_t,char const*,char const*) ; 
 int FUNC6 (char const*) ; 

struct Buf *FUNC7 (struct Buf *buf, const char *fmt, const char *s)
{
	char   *t;
        size_t tsz;

	t = FUNC2 (tsz = FUNC6 (fmt) + FUNC6 (s) + 1);
	if (!t)
	    FUNC4 (FUNC0("Allocation of buffer to print string failed"));
	FUNC5 (t, tsz, fmt, s);
	buf = FUNC1 (buf, t);
	FUNC3 (t);
	return buf;
}