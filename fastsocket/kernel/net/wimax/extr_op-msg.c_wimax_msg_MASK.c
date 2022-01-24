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
struct wimax_dev {int dummy; } ;
struct sk_buff {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct wimax_dev*,char const*,void const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct wimax_dev*,struct sk_buff*) ; 

int FUNC4(struct wimax_dev *wimax_dev, const char *pipe_name,
	      const void *buf, size_t size, gfp_t gfp_flags)
{
	int result = -ENOMEM;
	struct sk_buff *skb;

	skb = FUNC2(wimax_dev, pipe_name, buf, size, gfp_flags);
	if (FUNC0(skb))
		result = FUNC1(skb);
	else
		result = FUNC3(wimax_dev, skb);
	return result;
}