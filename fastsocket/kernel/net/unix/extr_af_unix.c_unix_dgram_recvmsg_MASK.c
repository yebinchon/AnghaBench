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
typedef  int /*<<< orphan*/  tmp_scm ;
struct unix_sock {int /*<<< orphan*/  readlock; int /*<<< orphan*/  peer_wait; } ;
struct socket {struct sock* sk; } ;
struct sock_iocb {struct scm_cookie* scm; } ;
struct sock {scalar_t__ sk_type; int sk_shutdown; } ;
struct sk_buff {size_t len; int /*<<< orphan*/  sk; } ;
struct scm_cookie {int /*<<< orphan*/  fp; } ;
struct msghdr {int /*<<< orphan*/  msg_iov; int /*<<< orphan*/  msg_flags; scalar_t__ msg_name; scalar_t__ msg_namelen; } ;
struct kiocb {int dummy; } ;
struct TYPE_2__ {scalar_t__ fp; int /*<<< orphan*/  cred; int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EOPNOTSUPP ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int MSG_PEEK ; 
 int /*<<< orphan*/  MSG_TRUNC ; 
 int RCV_SHUTDOWN ; 
 scalar_t__ SOCK_SEQPACKET ; 
 TYPE_1__ FUNC0 (struct sk_buff*) ; 
 struct sock_iocb* FUNC1 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC2 (struct scm_cookie*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,struct msghdr*,struct scm_cookie*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct scm_cookie*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC9 (struct sock*,struct sk_buff*) ; 
 struct sk_buff* FUNC10 (struct sock*,int,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (struct msghdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct scm_cookie*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct scm_cookie*,struct sk_buff*) ; 
 struct unix_sock* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct kiocb *iocb, struct socket *sock,
			      struct msghdr *msg, size_t size,
			      int flags)
{
	struct sock_iocb *siocb = FUNC1(iocb);
	struct scm_cookie tmp_scm;
	struct sock *sk = sock->sk;
	struct unix_sock *u = FUNC14(sk);
	int noblock = flags & MSG_DONTWAIT;
	struct sk_buff *skb;
	int err;

	err = -EOPNOTSUPP;
	if (flags&MSG_OOB)
		goto out;

	msg->msg_namelen = 0;

	FUNC3(&u->readlock);

	skb = FUNC10(sk, flags, noblock, &err);
	if (!skb) {
		FUNC15(sk);
		/* Signal EOF on disconnected non-blocking SEQPACKET socket. */
		if (sk->sk_type == SOCK_SEQPACKET && err == -EAGAIN &&
		    (sk->sk_shutdown & RCV_SHUTDOWN))
			err = 0;
		FUNC16(sk);
		goto out_unlock;
	}

	FUNC17(&u->peer_wait);

	if (msg->msg_name)
		FUNC11(msg, skb->sk);

	if (size > skb->len)
		size = skb->len;
	else if (size < skb->len)
		msg->msg_flags |= MSG_TRUNC;

	err = FUNC8(skb, 0, msg->msg_iov, size);
	if (err)
		goto out_free;

	if (!siocb->scm) {
		siocb->scm = &tmp_scm;
		FUNC2(&tmp_scm, 0, sizeof(tmp_scm));
	}
	FUNC7(siocb->scm, FUNC0(skb).pid, FUNC0(skb).cred);
	FUNC13(siocb->scm, skb);

	if (!(flags & MSG_PEEK)) {
		if (FUNC0(skb).fp)
			FUNC12(siocb->scm, skb);
	} else {
		/* It is questionable: on PEEK we could:
		   - do not return fds - good, but too simple 8)
		   - return fds, and do not return them on read (old strategy,
		     apparently wrong)
		   - clone fds (I chose it for now, it is the most universal
		     solution)

		   POSIX 1003.1g does not actually define this clearly
		   at all. POSIX 1003.1g doesn't define a lot of things
		   clearly however!

		*/
		if (FUNC0(skb).fp)
			siocb->scm->fp = FUNC5(FUNC0(skb).fp);
	}
	err = size;

	FUNC6(sock, msg, siocb->scm, flags);

out_free:
	FUNC9(sk, skb);
out_unlock:
	FUNC4(&u->readlock);
out:
	return err;
}