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
struct irlap_cb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PI_ADD_BOFS ; 
 int /*<<< orphan*/  PI_BAUD_RATE ; 
 int /*<<< orphan*/  PI_DATA_SIZE ; 
 int /*<<< orphan*/  PI_LINK_DISC ; 
 int /*<<< orphan*/  PI_MAX_TURN_TIME ; 
 int /*<<< orphan*/  PI_MIN_TURN_TIME ; 
 int /*<<< orphan*/  PI_WINDOW_SIZE ; 
 int FUNC0 (struct irlap_cb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  irlap_param_info ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 

int FUNC4(struct irlap_cb *self,
					struct sk_buff *skb)
{
	int ret;

	/* Insert data rate */
	ret = FUNC0(self, PI_BAUD_RATE, FUNC2(skb),
				FUNC3(skb), &irlap_param_info);
	if (ret < 0)
		return ret;
	FUNC1(skb, ret);

	/* Insert max turnaround time */
	ret = FUNC0(self, PI_MAX_TURN_TIME, FUNC2(skb),
				FUNC3(skb), &irlap_param_info);
	if (ret < 0)
		return ret;
	FUNC1(skb, ret);

	/* Insert data size */
	ret = FUNC0(self, PI_DATA_SIZE, FUNC2(skb),
				FUNC3(skb), &irlap_param_info);
	if (ret < 0)
		return ret;
	FUNC1(skb, ret);

	/* Insert window size */
	ret = FUNC0(self, PI_WINDOW_SIZE, FUNC2(skb),
				FUNC3(skb), &irlap_param_info);
	if (ret < 0)
		return ret;
	FUNC1(skb, ret);

	/* Insert additional BOFs */
	ret = FUNC0(self, PI_ADD_BOFS, FUNC2(skb),
				FUNC3(skb), &irlap_param_info);
	if (ret < 0)
		return ret;
	FUNC1(skb, ret);

	/* Insert minimum turnaround time */
	ret = FUNC0(self, PI_MIN_TURN_TIME, FUNC2(skb),
				FUNC3(skb), &irlap_param_info);
	if (ret < 0)
		return ret;
	FUNC1(skb, ret);

	/* Insert link disconnect/threshold time */
	ret = FUNC0(self, PI_LINK_DISC, FUNC2(skb),
				FUNC3(skb), &irlap_param_info);
	if (ret < 0)
		return ret;
	FUNC1(skb, ret);

	return 0;
}