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
struct addrinfo {int ai_flags; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int AI_CANONNAME ; 
 int AI_NUMERICHOST ; 
 int IF_NAMESIZE ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  IPPROTO_UDP ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC0 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snmp_client*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static inline const char *
FUNC6(struct snmp_client *sc, const char **strp)
{
	char str[INET6_ADDRSTRLEN + IF_NAMESIZE];
	struct addrinfo hints, *res;
	int error;

	if (**strp != '[')
		return (*strp + 1);

	const char *p = *strp + 1;
	while (*p != ']' ) {
		if (*p == '\0') {
			FUNC4(sc, "unterminated IPv6 address '%.*s'",
			    p - *strp, *strp);
			return (NULL);
		}
		p++;
	}

	if (p - *strp > INET6_ADDRSTRLEN + IF_NAMESIZE) {
		FUNC4(sc, "IPv6 address too long '%.*s'", p - *strp, *strp);
		return (NULL);
	}

	FUNC5(str, *strp + 1, p - (*strp + 1));
	str[p - (*strp + 1)] = '\0';

	FUNC3(&hints, 0, sizeof(hints));
	hints.ai_flags = AI_CANONNAME | AI_NUMERICHOST;
	hints.ai_family = AF_INET6;
	hints.ai_socktype = SOCK_DGRAM;
	hints.ai_protocol = IPPROTO_UDP;
	error = FUNC2(str, NULL, &hints, &res);
	if (error != 0) {
		FUNC4(sc, "%s: %s", str, FUNC1(error));
		return (NULL);
	}
	FUNC0(res);
	*strp = p + 1;
	return (p);
}