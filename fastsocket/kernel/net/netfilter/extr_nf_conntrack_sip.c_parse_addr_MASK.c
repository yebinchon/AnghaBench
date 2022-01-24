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
union nf_inet_addr {int /*<<< orphan*/  ip6; int /*<<< orphan*/  ip; } ;
typedef  int /*<<< orphan*/  u8 ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ *,int,char const**) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ *,int,char const**) ; 
 int /*<<< orphan*/  FUNC3 (union nf_inet_addr*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct nf_conn const*) ; 

__attribute__((used)) static int FUNC5(const struct nf_conn *ct, const char *cp,
                      const char **endp, union nf_inet_addr *addr,
                      const char *limit)
{
	const char *end;
	int ret = 0;

	if (!ct)
		return 0;

	FUNC3(addr, 0, sizeof(*addr));
	switch (FUNC4(ct)) {
	case AF_INET:
		ret = FUNC1(cp, limit - cp, (u8 *)&addr->ip, -1, &end);
		break;
	case AF_INET6:
		ret = FUNC2(cp, limit - cp, (u8 *)&addr->ip6, -1, &end);
		break;
	default:
		FUNC0();
	}

	if (ret == 0 || end == cp)
		return 0;
	if (endp)
		*endp = end;
	return 1;
}