#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ rm_so; } ;
typedef  TYPE_1__ regmatch_t ;

/* Variables and functions */
 int bufsz ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (TYPE_1__*,char*,char const*) ; 
 char* FUNC2 (TYPE_1__*,char const*) ; 
 int FUNC3 (TYPE_1__*) ; 
 int FUNC4 (char*,char**,int) ; 

int FUNC5 (regmatch_t * m, const char *src, char **endptr,
		     int base)
{
	int     n = 0;

#define bufsz 20
	char    buf[bufsz];
	char   *s;

	if (m == NULL || m->rm_so < 0)
		return 0;

	if (FUNC3 (m) < bufsz)
		s = FUNC1 (m, buf, src);
	else
		s = FUNC2 (m, src);

	n = FUNC4 (s, endptr, base);

	if (s != buf)
		FUNC0 (s);

	return n;
}