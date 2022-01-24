#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ rm_so; int rm_eo; } ;
typedef  TYPE_1__ regmatch_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 

char   *FUNC4 (regmatch_t * m, const char *src)
{
	char   *str;
	int     len;

	if (m == NULL || m->rm_so < 0)
		return NULL;
	len = m->rm_eo - m->rm_so;
	str = (char *) FUNC1 ((len + 1) * sizeof (char));
	if (!str)
		FUNC2(FUNC0("Unable to allocate a copy of the match"));
	FUNC3 (str, src + m->rm_so, len);
	str[len] = 0;
	return str;
}