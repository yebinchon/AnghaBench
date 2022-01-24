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
typedef  union nf_inet_addr {int dummy; } nf_inet_addr ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (char const*,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn const*,char const*,char const**,union nf_inet_addr*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int FUNC3(const struct nf_conn *ct, const char *dptr,
			       unsigned int dataoff, unsigned int datalen,
			       const char *name,
			       unsigned int *matchoff, unsigned int *matchlen,
			       union nf_inet_addr *addr)
{
	const char *limit = dptr + datalen;
	const char *start, *end;

	limit = FUNC0(dptr + dataoff, limit, ",", FUNC2(","));
	if (!limit)
		limit = dptr + datalen;

	start = FUNC0(dptr + dataoff, limit, name, FUNC2(name));
	if (!start)
		return 0;

	start += FUNC2(name);
	if (!FUNC1(ct, start, &end, addr, limit))
		return 0;
	*matchoff = start - dptr;
	*matchlen = end - start;
	return 1;
}