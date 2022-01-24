#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct kiocb_priv {scalar_t__ actual; int nr_segs; struct kiocb_priv* buf; TYPE_1__* iv; } ;
struct kiocb {struct kiocb_priv* private; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  iov_base; scalar_t__ iov_len; } ;

/* Variables and functions */
 scalar_t__ EFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb_priv*) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static ssize_t FUNC3(struct kiocb *iocb)
{
	struct kiocb_priv	*priv = iocb->private;
	ssize_t			len, total;
	void			*to_copy;
	int			i;

	/* we "retry" to get the right mm context for this: */

	/* copy stuff into user buffers */
	total = priv->actual;
	len = 0;
	to_copy = priv->buf;
	for (i=0; i < priv->nr_segs; i++) {
		ssize_t this = FUNC2((ssize_t)(priv->iv[i].iov_len), total);

		if (FUNC0(priv->iv[i].iov_base, to_copy, this)) {
			if (len == 0)
				len = -EFAULT;
			break;
		}

		total -= this;
		len += this;
		to_copy += this;
		if (total == 0)
			break;
	}
	FUNC1(priv->buf);
	FUNC1(priv);
	return len;
}