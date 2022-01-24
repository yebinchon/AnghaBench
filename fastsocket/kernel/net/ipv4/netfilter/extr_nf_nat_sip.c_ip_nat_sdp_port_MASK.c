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
typedef  int u_int16_t ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct sk_buff*,char const**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,char const**,unsigned int*,unsigned int,unsigned int,char*,unsigned int) ; 
 unsigned int FUNC2 (char*,char*,int) ; 

__attribute__((used)) static unsigned int FUNC3(struct sk_buff *skb,
				    const char **dptr,
				    unsigned int *datalen,
				    unsigned int matchoff,
				    unsigned int matchlen,
				    u_int16_t port)
{
	char buffer[sizeof("nnnnn")];
	unsigned int buflen;

	buflen = FUNC2(buffer, "%u", port);
	if (!FUNC1(skb, dptr, datalen, matchoff, matchlen,
			   buffer, buflen))
		return 0;

	return FUNC0(skb, dptr, datalen);
}