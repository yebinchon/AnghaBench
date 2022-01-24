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
struct snmp_client {char* chost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

int
FUNC4(struct snmp_client *cl, const char *h)
{
	char *np;

	if (h == NULL) {
		if (cl->chost != NULL)
			FUNC0(cl->chost);
		cl->chost = NULL;
	} else {
		if ((np = FUNC1(FUNC3(h) + 1)) == NULL)
			return (-1);
		FUNC2(np, h);
		if (cl->chost != NULL)
			FUNC0(cl->chost);
		cl->chost = np;
	}
	return (0);
}