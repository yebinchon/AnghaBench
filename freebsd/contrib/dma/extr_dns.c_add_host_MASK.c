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
struct sockaddr {int dummy; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/ * ai_addr; struct addrinfo* ai_next; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
struct mx_hostentry {int pref; int /*<<< orphan*/  addr; struct addrinfo ai; int /*<<< orphan*/  sa; int /*<<< orphan*/  host; } ;
typedef  int /*<<< orphan*/  servname ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
#define  EAI_AGAIN 129 
#define  EAI_NONAME 128 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  NI_NUMERICHOST ; 
 int /*<<< orphan*/  PF_UNSPEC ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 
 int FUNC2 (char const*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 struct mx_hostentry* FUNC5 (struct mx_hostentry*,size_t) ; 
 size_t FUNC6 (size_t,int const) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static int
FUNC9(int pref, const char *host, int port, struct mx_hostentry **he, size_t *ps)
{
	struct addrinfo hints, *res, *res0 = NULL;
	char servname[10];
	struct mx_hostentry *p;
	const int count_inc = 10;

	FUNC4(&hints, 0, sizeof(hints));
	hints.ai_family = PF_UNSPEC;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = IPPROTO_TCP;

	FUNC7(servname, sizeof(servname), "%d", port);
	switch (FUNC2(host, servname, &hints, &res0)) {
	case 0:
		break;
	case EAI_AGAIN:
	case EAI_NONAME:
		/*
		 * EAI_NONAME gets returned for:
		 * SMARTHOST set but DNS server not reachable -> defer
		 * SMARTHOST set but DNS server returns "host does not exist"
		 *           -> buggy configuration
		 *           -> either defer or bounce would be ok -> defer
		 * MX entry was returned by DNS server but name doesn't resolve
		 *           -> hopefully transient situation -> defer
		 * all other DNS problems should have been caught earlier
		 * in dns_get_mx_list().
		 */
		goto out;
	default:
		return(-1);
	}

	for (res = res0; res != NULL; res = res->ai_next) {
		if (*ps + 1 >= FUNC6(*ps, count_inc)) {
			size_t newsz = FUNC6(*ps + 2, count_inc);
			*he = FUNC5(*he, newsz * sizeof(**he));
			if (*he == NULL)
				goto out;
		}

		p = &(*he)[*ps];
		FUNC8(p->host, host, sizeof(p->host));
		p->pref = pref;
		p->ai = *res;
		p->ai.ai_addr = NULL;
		FUNC0(res->ai_addr, &p->sa, p->ai.ai_addrlen);

		FUNC3((struct sockaddr *)&p->sa, p->ai.ai_addrlen,
			    p->addr, sizeof(p->addr),
			    NULL, 0, NI_NUMERICHOST);

		(*ps)++;
	}
	FUNC1(res0);

	return (0);

out:
	if (res0 != NULL)
		FUNC1(res0);
	return (1);
}