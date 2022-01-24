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
struct sk_buff {int len; scalar_t__ ip_summed; int /*<<< orphan*/  dev; int /*<<< orphan*/  csum; int /*<<< orphan*/  data; } ;
struct iovec {int iov_len; int iov_base; } ;
typedef  int /*<<< orphan*/  __wsum ;

/* Variables and functions */
 scalar_t__ CHECKSUM_COMPLETE ; 
 int EFAULT ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (struct sk_buff*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int,struct iovec*,int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct sk_buff *skb,
				     int hlen, struct iovec *iov)
{
	__wsum csum;
	int chunk = skb->len - hlen;

	if (!chunk)
		return 0;

	/* Skip filled elements.
	 * Pretty silly, look at memcpy_toiovec, though 8)
	 */
	while (!iov->iov_len)
		iov++;

	if (iov->iov_len < chunk) {
		if (FUNC0(skb))
			goto csum_error;
		if (FUNC5(skb, hlen, iov, chunk))
			goto fault;
	} else {
		csum = FUNC2(skb->data, hlen, skb->csum);
		if (FUNC4(skb, hlen, iov->iov_base,
					       chunk, &csum))
			goto fault;
		if (FUNC1(csum))
			goto csum_error;
		if (FUNC6(skb->ip_summed == CHECKSUM_COMPLETE))
			FUNC3(skb->dev);
		iov->iov_len -= chunk;
		iov->iov_base += chunk;
	}
	return 0;
csum_error:
	return -EINVAL;
fault:
	return -EFAULT;
}