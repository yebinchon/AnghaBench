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
typedef  unsigned char const u_int8_t ;
struct sk_buff {int dummy; } ;
struct dccp_hdr {int dccph_doff; } ;

/* Variables and functions */
 int FUNC0 (struct dccp_hdr const*) ; 
 int /*<<< orphan*/  dccp_buflock ; 
 int /*<<< orphan*/  dccp_optbuf ; 
 unsigned char* FUNC1 (struct sk_buff const*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline bool
FUNC4(u_int8_t option,
		 const struct sk_buff *skb,
		 unsigned int protoff,
		 const struct dccp_hdr *dh,
		 bool *hotdrop)
{
	/* tcp.doff is only 4 bits, ie. max 15 * 4 bytes */
	const unsigned char *op;
	unsigned int optoff = FUNC0(dh);
	unsigned int optlen = dh->dccph_doff*4 - FUNC0(dh);
	unsigned int i;

	if (dh->dccph_doff * 4 < FUNC0(dh))
		goto invalid;

	if (!optlen)
		return false;

	FUNC2(&dccp_buflock);
	op = FUNC1(skb, protoff + optoff, optlen, dccp_optbuf);
	if (op == NULL) {
		/* If we don't have the whole header, drop packet. */
		goto partial;
	}

	for (i = 0; i < optlen; ) {
		if (op[i] == option) {
			FUNC3(&dccp_buflock);
			return true;
		}

		if (op[i] < 2)
			i++;
		else
			i += op[i+1]?:1;
	}

	FUNC3(&dccp_buflock);
	return false;

partial:
	FUNC3(&dccp_buflock);
invalid:
	*hotdrop = true;
	return false;
}