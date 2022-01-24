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
struct strbuf {char const* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*) ; 
 char* FUNC5 (struct strbuf*,int /*<<< orphan*/ *) ; 
 size_t FUNC6 (char const*,char*) ; 

__attribute__((used)) static void FUNC7(struct strbuf *dst, const char *src)
{
	char *to_free = NULL;

	if (dst->buf == src)
		to_free = FUNC5(dst, NULL);

	FUNC3(dst, '\'');
	while (*src) {
		size_t len = FUNC6(src, "'!");
		FUNC2(dst, src, len);
		src += len;
		while (FUNC1(*src)) {
			FUNC4(dst, "'\\");
			FUNC3(dst, *src++);
			FUNC3(dst, '\'');
		}
	}
	FUNC3(dst, '\'');
	FUNC0(to_free);
}