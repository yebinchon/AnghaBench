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
struct sk_buff {int dummy; } ;
struct nlmsghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (struct nlmsghdr*) ; 
 int NLMSG_DONE ; 
 struct nlmsghdr* FUNC1 (struct sk_buff*,int,int,int,int,int) ; 
 int NLM_F_MULTI ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct sk_buff *FUNC5(int pid, int seq, int type, int done,
				 int multi, void *payload, int size)
{
	struct sk_buff	*skb;
	struct nlmsghdr	*nlh;
	void		*data;
	int		flags = multi ? NLM_F_MULTI : 0;
	int		t     = done  ? NLMSG_DONE  : type;

	skb = FUNC4(size, GFP_KERNEL);
	if (!skb)
		return NULL;

	nlh	= FUNC1(skb, pid, seq, t, size, flags);
	data	= FUNC0(nlh);
	FUNC3(data, payload, size);
	return skb;

nlmsg_failure:			/* Used by NLMSG_NEW */
	if (skb)
		FUNC2(skb);
	return NULL;
}