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
struct sock {int dummy; } ;
struct net_device {int dummy; } ;
struct can_filter {int /*<<< orphan*/  can_mask; int /*<<< orphan*/  can_id; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct sock*) ; 
 int /*<<< orphan*/  raw_rcv ; 

__attribute__((used)) static int FUNC2(struct net_device *dev, struct sock *sk,
			      struct can_filter *filter, int count)
{
	int err = 0;
	int i;

	for (i = 0; i < count; i++) {
		err = FUNC0(dev, filter[i].can_id,
				      filter[i].can_mask,
				      raw_rcv, sk, "raw");
		if (err) {
			/* clean up successfully registered filters */
			while (--i >= 0)
				FUNC1(dev, filter[i].can_id,
						  filter[i].can_mask,
						  raw_rcv, sk);
			break;
		}
	}

	return err;
}