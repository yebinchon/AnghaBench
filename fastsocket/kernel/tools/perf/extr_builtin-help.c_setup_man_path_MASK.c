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
struct strbuf {int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  PERF_MAN_PATH ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 char const* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(void)
{
	struct strbuf new_path = STRBUF_INIT;
	const char *old_path = FUNC0("MANPATH");

	/* We should always put ':' after our path. If there is no
	 * old_path, the ':' at the end will let 'man' to try
	 * system-wide paths after ours to find the manual page. If
	 * there is old_path, we need ':' as delimiter. */
	FUNC3(&new_path, FUNC5(PERF_MAN_PATH));
	FUNC2(&new_path, ':');
	if (old_path)
		FUNC3(&new_path, old_path);

	FUNC1("MANPATH", new_path.buf, 1);

	FUNC4(&new_path);
}