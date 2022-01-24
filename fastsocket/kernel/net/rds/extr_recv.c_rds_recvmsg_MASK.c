#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct socket {struct sock* sk; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_zero; TYPE_4__ sin_addr; int /*<<< orphan*/  sin_port; int /*<<< orphan*/  sin_family; } ;
struct sock {int /*<<< orphan*/ * sk_sleep; } ;
struct rds_sock {scalar_t__ rs_cong_notify; int /*<<< orphan*/  rs_notify_queue; } ;
struct TYPE_7__ {int /*<<< orphan*/  h_sport; int /*<<< orphan*/  h_len; } ;
struct rds_incoming {int /*<<< orphan*/  i_saddr; TYPE_3__ i_hdr; TYPE_2__* i_conn; } ;
struct msghdr {int msg_namelen; int msg_flags; scalar_t__ msg_name; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;
struct TYPE_6__ {TYPE_1__* c_trans; int /*<<< orphan*/  c_faddr; } ;
struct TYPE_5__ {int (* inc_copy_to_user ) (struct rds_incoming*,int /*<<< orphan*/ ,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int EAGAIN ; 
 int EFAULT ; 
 int ETIMEDOUT ; 
 long MAX_SCHEDULE_TIMEOUT ; 
 int MSG_DONTWAIT ; 
 int MSG_OOB ; 
 int MSG_PEEK ; 
 int MSG_TRUNC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct rds_incoming*,struct msghdr*) ; 
 int /*<<< orphan*/  FUNC5 (struct rds_incoming*) ; 
 scalar_t__ FUNC6 (struct rds_sock*,struct rds_incoming**) ; 
 int FUNC7 (struct rds_sock*,struct msghdr*) ; 
 int FUNC8 (struct rds_sock*,struct msghdr*) ; 
 struct rds_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rds_sock*,struct rds_incoming*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  s_recv_deliver_raced ; 
 int /*<<< orphan*/  s_recv_delivered ; 
 long FUNC13 (struct sock*,int) ; 
 int FUNC14 (struct rds_incoming*,int /*<<< orphan*/ ,size_t) ; 
 long FUNC15 (int /*<<< orphan*/ ,int,long) ; 

int FUNC16(struct kiocb *iocb, struct socket *sock, struct msghdr *msg,
		size_t size, int msg_flags)
{
	struct sock *sk = sock->sk;
	struct rds_sock *rs = FUNC9(sk);
	long timeo;
	int ret = 0, nonblock = msg_flags & MSG_DONTWAIT;
	struct sockaddr_in *sin;
	struct rds_incoming *inc = NULL;

	/* udp_recvmsg()->sock_recvtimeo() gets away without locking too.. */
	timeo = FUNC13(sk, nonblock);

	FUNC12("size %zu flags 0x%x timeo %ld\n", size, msg_flags, timeo);

	msg->msg_namelen = 0;

	if (msg_flags & MSG_OOB)
		goto out;

	while (1) {
		/* If there are pending notifications, do those - and nothing else */
		if (!FUNC1(&rs->rs_notify_queue)) {
			ret = FUNC8(rs, msg);
			break;
		}

		if (rs->rs_cong_notify) {
			ret = FUNC7(rs, msg);
			break;
		}

		if (!FUNC6(rs, &inc)) {
			if (nonblock) {
				ret = -EAGAIN;
				break;
			}

			timeo = FUNC15(*sk->sk_sleep,
						(!FUNC1(&rs->rs_notify_queue)
						|| rs->rs_cong_notify
						|| FUNC6(rs, &inc)),
						timeo);
			FUNC12("recvmsg woke inc %p timeo %ld\n", inc,
				 timeo);
			if (timeo > 0 || timeo == MAX_SCHEDULE_TIMEOUT)
				continue;

			ret = timeo;
			if (ret == 0)
				ret = -ETIMEDOUT;
			break;
		}

		FUNC12("copying inc %p from %pI4:%u to user\n", inc,
			 &inc->i_conn->c_faddr,
			 FUNC3(inc->i_hdr.h_sport));
		ret = inc->i_conn->c_trans->inc_copy_to_user(inc, msg->msg_iov,
							     size);
		if (ret < 0)
			break;

		/*
		 * if the message we just copied isn't at the head of the
		 * recv queue then someone else raced us to return it, try
		 * to get the next message.
		 */
		if (!FUNC11(rs, inc, !(msg_flags & MSG_PEEK))) {
			FUNC5(inc);
			inc = NULL;
			FUNC10(s_recv_deliver_raced);
			continue;
		}

		if (ret < FUNC0(inc->i_hdr.h_len)) {
			if (msg_flags & MSG_TRUNC)
				ret = FUNC0(inc->i_hdr.h_len);
			msg->msg_flags |= MSG_TRUNC;
		}

		if (FUNC4(inc, msg)) {
			ret = -EFAULT;
			goto out;
		}

		FUNC10(s_recv_delivered);

		sin = (struct sockaddr_in *)msg->msg_name;
		if (sin) {
			sin->sin_family = AF_INET;
			sin->sin_port = inc->i_hdr.h_sport;
			sin->sin_addr.s_addr = inc->i_saddr;
			FUNC2(sin->sin_zero, 0, sizeof(sin->sin_zero));
			msg->msg_namelen = sizeof(*sin);
		}
		break;
	}

	if (inc)
		FUNC5(inc);

out:
	return ret;
}