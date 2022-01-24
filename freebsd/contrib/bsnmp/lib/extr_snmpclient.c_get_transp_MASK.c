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
struct snmp_client {int dummy; } ;

/* Variables and functions */
 int SNMP_TRANS_UDP ; 
 size_t FUNC0 (char**) ; 
 int /*<<< orphan*/  FUNC1 (struct snmp_client*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char const*,char*) ; 
 char** trans_list ; 

__attribute__((used)) static inline int
FUNC4(struct snmp_client *sc, const char **strp)
{
	const char *p;
	size_t i;

	for (i = 0; i < FUNC0(trans_list); i++) {
		if (trans_list[i] == NULL || *trans_list[i] == '\0')
			continue;
		p = FUNC3(*strp, trans_list[i]);
		if (p == *strp) {
			*strp += FUNC2(trans_list[i]);
			return ((int)i);
		}
	}

	p = *strp;
	if (p[0] == ':' && p[1] == ':') {
		FUNC1(sc, "empty transport specifier");
		return (-1);
	}
	/* by default assume UDP */
	return (SNMP_TRANS_UDP);
}