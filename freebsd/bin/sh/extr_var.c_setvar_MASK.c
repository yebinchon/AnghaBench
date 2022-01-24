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

/* Variables and functions */
 int /*<<< orphan*/  INTOFF ; 
 int /*<<< orphan*/  INTON ; 
 int VUNSET ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (char const) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 size_t FUNC6 (char const*) ; 

void
FUNC7(const char *name, const char *val, int flags)
{
	const char *p;
	size_t len;
	size_t namelen;
	size_t vallen;
	char *nameeq;
	int isbad;

	isbad = 0;
	p = name;
	if (! FUNC3(*p))
		isbad = 1;
	p++;
	for (;;) {
		if (! FUNC2(*p)) {
			if (*p == '\0' || *p == '=')
				break;
			isbad = 1;
		}
		p++;
	}
	namelen = p - name;
	if (isbad)
		FUNC1("%.*s: bad variable name", (int)namelen, name);
	len = namelen + 2;		/* 2 is space for '=' and '\0' */
	if (val == NULL) {
		flags |= VUNSET;
		vallen = 0;
	} else {
		vallen = FUNC6(val);
		len += vallen;
	}
	INTOFF;
	nameeq = FUNC0(len);
	FUNC4(nameeq, name, namelen);
	nameeq[namelen] = '=';
	if (val)
		FUNC4(nameeq + namelen + 1, val, vallen + 1);
	else
		nameeq[namelen + 1] = '\0';
	FUNC5(nameeq, flags);
	INTON;
}