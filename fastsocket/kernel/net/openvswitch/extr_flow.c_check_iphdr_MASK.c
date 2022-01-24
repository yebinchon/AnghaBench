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
struct sk_buff {unsigned int len; } ;
struct iphdr {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC1 (struct sk_buff*) ; 
 unsigned int FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*,unsigned int) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct sk_buff *skb)
{
	unsigned int nh_ofs = FUNC2(skb);
	unsigned int ip_len;
	int err;

	err = FUNC0(skb, nh_ofs + sizeof(struct iphdr));
	if (FUNC4(err))
		return err;

	ip_len = FUNC1(skb);
	if (FUNC4(ip_len < sizeof(struct iphdr) ||
		     skb->len < nh_ofs + ip_len))
		return -EINVAL;

	FUNC3(skb, nh_ofs + ip_len);
	return 0;
}