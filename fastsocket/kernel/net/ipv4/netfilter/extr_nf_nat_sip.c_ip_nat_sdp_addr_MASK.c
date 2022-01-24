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
union nf_inet_addr {int /*<<< orphan*/  ip; } ;
struct sk_buff {int dummy; } ;
typedef  enum sdp_header_types { ____Placeholder_sdp_header_types } sdp_header_types ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*,char const**,unsigned int*) ; 
 scalar_t__ FUNC1 (struct sk_buff*,char const**,unsigned int,unsigned int*,int,int,char*,unsigned int) ; 
 unsigned int FUNC2 (char*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static unsigned int FUNC3(struct sk_buff *skb, const char **dptr,
				    unsigned int dataoff,
				    unsigned int *datalen,
				    enum sdp_header_types type,
				    enum sdp_header_types term,
				    const union nf_inet_addr *addr)
{
	char buffer[sizeof("nnn.nnn.nnn.nnn")];
	unsigned int buflen;

	buflen = FUNC2(buffer, "%pI4", &addr->ip);
	if (FUNC1(skb, dptr, dataoff, datalen, type, term,
			      buffer, buflen))
		return 0;

	return FUNC0(skb, dptr, datalen);
}