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
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 unsigned int SIP_PORT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conn const*,char const*,char const**,union nf_inet_addr*,char const*) ; 
 unsigned int FUNC2 (char const*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conn const*,char const*,char const*,int*) ; 
 unsigned int FUNC4 (struct nf_conn const*,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (char const*,char*,int /*<<< orphan*/ ) ; 

int FUNC7(const struct nf_conn *ct,
			 const char *dptr, unsigned int datalen,
			 unsigned int *matchoff, unsigned int *matchlen,
			 union nf_inet_addr *addr, __be16 *port)
{
	const char *start = dptr, *limit = dptr + datalen, *end;
	unsigned int mlen;
	unsigned int p;
	int shift = 0;

	/* Skip method and following whitespace */
	mlen = FUNC4(ct, dptr, limit, NULL);
	if (!mlen)
		return 0;
	dptr += mlen;
	if (++dptr >= limit)
		return 0;

	/* Find SIP URI */
	limit -= FUNC5("sip:");
	for (; dptr < limit; dptr++) {
		if (*dptr == '\r' || *dptr == '\n')
			return -1;
		if (FUNC6(dptr, "sip:", FUNC5("sip:")) == 0)
			break;
	}
	if (!FUNC3(ct, dptr, limit, &shift))
		return 0;
	dptr += shift;

	if (!FUNC1(ct, dptr, &end, addr, limit))
		return -1;
	if (end < limit && *end == ':') {
		end++;
		p = FUNC2(end, (char **)&end, 10);
		if (p < 1024 || p > 65535)
			return -1;
		*port = FUNC0(p);
	} else
		*port = FUNC0(SIP_PORT);

	if (end == dptr)
		return 0;
	*matchoff = dptr - start;
	*matchlen = end - dptr;
	return 1;
}