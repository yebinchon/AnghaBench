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
struct in_addr {int dummy; } ;

/* Variables and functions */
 int INET_ADDRSTRLEN ; 
 int FUNC0 (char*,struct in_addr*) ; 
 scalar_t__ FUNC1 (char const) ; 
 scalar_t__ FUNC2 (char const) ; 
 int /*<<< orphan*/  FUNC3 (struct snmp_client*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,int) ; 

__attribute__((used)) static inline const char *
FUNC5(struct snmp_client *sc, const char **strp)
{
	const char *p = *strp;

	while (FUNC1(*p) && (FUNC2(*p) || *p == '.'))
		p++;

	if (p - *strp > INET_ADDRSTRLEN) {
		FUNC3(sc, "IPv4 address too long '%.*s'", p - *strp, *strp);
		return (NULL);
	}
	if (*strp == p)
		return *strp;

	char str[INET_ADDRSTRLEN + 1];
	FUNC4(str, *strp, p - *strp);
	str[p - *strp] = '\0';

	struct in_addr addr;
	if (FUNC0(str, &addr) != 1) {
		FUNC3(sc, "illegal IPv4 address '%s'", str);
		return (NULL);
	}

	*strp = p;
	return (p);
}