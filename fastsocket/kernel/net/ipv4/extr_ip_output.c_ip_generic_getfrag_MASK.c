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
struct sk_buff {scalar_t__ ip_summed; int /*<<< orphan*/  csum; } ;
struct iovec {int dummy; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 scalar_t__ CHECKSUM_PARTIAL ; 
 int EFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (char*,struct iovec*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,struct iovec*,int,int) ; 

int
FUNC3(void *from, char *to, int offset, int len, int odd, struct sk_buff *skb)
{
	struct iovec *iov = from;

	if (skb->ip_summed == CHECKSUM_PARTIAL) {
		if (FUNC2(to, iov, offset, len) < 0)
			return -EFAULT;
	} else {
		__wsum csum = 0;
		if (FUNC1(to, iov, offset, len, &csum) < 0)
			return -EFAULT;
		skb->csum = FUNC0(skb->csum, csum, odd);
	}
	return 0;
}