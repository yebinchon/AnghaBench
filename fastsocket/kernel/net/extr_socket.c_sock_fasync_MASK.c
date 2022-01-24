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
struct socket {struct sock* sk; struct fasync_struct* fasync_list; } ;
struct sock {int /*<<< orphan*/  sk_callback_lock; } ;
struct file {int /*<<< orphan*/  f_lock; int /*<<< orphan*/  f_flags; struct socket* private_data; } ;
struct fasync_struct {int fa_fd; struct fasync_struct* fa_next; int /*<<< orphan*/  magic; struct file* fa_file; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FASYNC ; 
 int /*<<< orphan*/  FASYNC_MAGIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct fasync_struct*) ; 
 struct fasync_struct* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(int fd, struct file *filp, int on)
{
	struct fasync_struct *fa, *fna = NULL, **prev;
	struct socket *sock;
	struct sock *sk;

	if (on) {
		fna = FUNC1(sizeof(struct fasync_struct), GFP_KERNEL);
		if (fna == NULL)
			return -ENOMEM;
	}

	sock = filp->private_data;

	sk = sock->sk;
	if (sk == NULL) {
		FUNC0(fna);
		return -EINVAL;
	}

	FUNC2(sk);

	FUNC4(&filp->f_lock);
	if (on)
		filp->f_flags |= FASYNC;
	else
		filp->f_flags &= ~FASYNC;
	FUNC5(&filp->f_lock);

	prev = &(sock->fasync_list);

	for (fa = *prev; fa != NULL; prev = &fa->fa_next, fa = *prev)
		if (fa->fa_file == filp)
			break;

	if (on) {
		if (fa != NULL) {
			FUNC6(&sk->sk_callback_lock);
			fa->fa_fd = fd;
			FUNC7(&sk->sk_callback_lock);

			FUNC0(fna);
			goto out;
		}
		fna->fa_file = filp;
		fna->fa_fd = fd;
		fna->magic = FASYNC_MAGIC;
		fna->fa_next = sock->fasync_list;
		FUNC6(&sk->sk_callback_lock);
		sock->fasync_list = fna;
		FUNC7(&sk->sk_callback_lock);
	} else {
		if (fa != NULL) {
			FUNC6(&sk->sk_callback_lock);
			*prev = fa->fa_next;
			FUNC7(&sk->sk_callback_lock);
			FUNC0(fa);
		}
	}

out:
	FUNC3(sock->sk);
	return 0;
}