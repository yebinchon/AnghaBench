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
struct strbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_SEP ; 
 scalar_t__ FUNC0 (char const*) ; 
 char const* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*) ; 

__attribute__((used)) static void FUNC4(struct strbuf *out, const char *path)
{
	if (path && *path) {
		if (FUNC0(path))
			FUNC3(out, path);
		else
			FUNC3(out, FUNC1(path));

		FUNC2(out, PATH_SEP);
	}
}