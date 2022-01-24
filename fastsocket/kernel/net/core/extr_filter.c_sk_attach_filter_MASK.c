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
struct sock_fprog {int len; int /*<<< orphan*/ * filter; } ;
struct sock_filter {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_filter; } ;
struct sk_filter {int len; int /*<<< orphan*/  insns; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int EFAULT ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct sk_filter*) ; 
 struct sk_filter* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*,struct sk_filter*) ; 
 int /*<<< orphan*/  FUNC8 (struct sock*,struct sk_filter*) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_filter*,unsigned int) ; 
 struct sk_filter* FUNC10 (struct sock*,unsigned int,int /*<<< orphan*/ ) ; 

int FUNC11(struct sock_fprog *fprog, struct sock *sk)
{
	struct sk_filter *fp, *old_fp;
	unsigned int fsize = sizeof(struct sock_filter) * fprog->len;
	int err;

	/* Make sure new filter is there and in the right amounts. */
	if (fprog->filter == NULL)
		return -EINVAL;

	fp = FUNC10(sk, fsize+sizeof(*fp), GFP_KERNEL);
	if (!fp)
		return -ENOMEM;
	if (FUNC1(fp->insns, fprog->filter, fsize)) {
		FUNC9(sk, fp, fsize+sizeof(*fp));
		return -EFAULT;
	}

	FUNC0(&fp->refcnt, 1);
	fp->len = fprog->len;

	err = FUNC6(fp->insns, fp->len);
	if (err) {
		FUNC8(sk, fp);
		return err;
	}

	FUNC4();
	old_fp = FUNC3(sk->sk_filter);
	FUNC2(sk->sk_filter, fp);
	FUNC5();

	if (old_fp)
		FUNC7(sk, old_fp);
	return 0;
}