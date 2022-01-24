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
struct strbuf {size_t len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int) ; 

void FUNC4(struct strbuf *dst, const char** argv, size_t maxlen)
{
	int i;

	/* Copy into destination buffer. */
	FUNC3(dst, 255);
	for (i = 0; argv[i]; ++i) {
		FUNC2(dst, ' ');
		FUNC1(dst, argv[i]);
		if (maxlen && dst->len > maxlen)
			FUNC0("Too many or long arguments");
	}
}