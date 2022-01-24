#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct sctp_sndrcvinfo {int dummy; } ;
struct msghdr {char* msg_control; int msg_controllen; int msg_flags; } ;
struct kvec {unsigned int iov_len; scalar_t__ iov_base; } ;
struct TYPE_6__ {scalar_t__ base; int /*<<< orphan*/  len; } ;
struct connection {scalar_t__ nodeid; int /*<<< orphan*/  sock_mutex; int /*<<< orphan*/  rwork; int /*<<< orphan*/  flags; int /*<<< orphan*/ * rx_page; TYPE_1__ cb; int /*<<< orphan*/ * sock; } ;
typedef  int /*<<< orphan*/  incmsg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CF_READ_PENDING ; 
 int FUNC1 (int) ; 
 int EAGAIN ; 
 int EBADMSG ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int MSG_DONTWAIT ; 
 int MSG_NOSIGNAL ; 
 int MSG_NOTIFICATION ; 
 scalar_t__ PAGE_CACHE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 scalar_t__ FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct connection*,int) ; 
 int FUNC10 (scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC11 (int /*<<< orphan*/ *,struct msghdr*,struct kvec*,int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,unsigned int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (char**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct connection*,struct msghdr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  recv_workqueue ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC20(struct connection *con)
{
	int ret = 0;
	struct msghdr msg = {};
	struct kvec iov[2];
	unsigned len;
	int r;
	int call_again_soon = 0;
	int nvec;
	char incmsg[FUNC1(sizeof(struct sctp_sndrcvinfo))];

	FUNC14(&con->sock_mutex);

	if (con->sock == NULL) {
		ret = -EAGAIN;
		goto out_close;
	}

	if (con->rx_page == NULL) {
		/*
		 * This doesn't need to be atomic, but I think it should
		 * improve performance if it is.
		 */
		con->rx_page = FUNC3(GFP_ATOMIC);
		if (con->rx_page == NULL)
			goto out_resched;
		FUNC8(&con->cb, PAGE_CACHE_SIZE);
	}

	/* Only SCTP needs these really */
	FUNC13(&incmsg, 0, sizeof(incmsg));
	msg.msg_control = incmsg;
	msg.msg_controllen = sizeof(incmsg);

	/*
	 * iov[0] is the bit of the circular buffer between the current end
	 * point (cb.base + cb.len) and the end of the buffer.
	 */
	iov[0].iov_len = con->cb.base - FUNC5(&con->cb);
	iov[0].iov_base = FUNC16(con->rx_page) + FUNC5(&con->cb);
	iov[1].iov_len = 0;
	nvec = 1;

	/*
	 * iov[1] is the bit of the circular buffer between the start of the
	 * buffer and the start of the currently used section (cb.base)
	 */
	if (FUNC5(&con->cb) >= con->cb.base) {
		iov[0].iov_len = PAGE_CACHE_SIZE - FUNC5(&con->cb);
		iov[1].iov_len = con->cb.base;
		iov[1].iov_base = FUNC16(con->rx_page);
		nvec = 2;
	}
	len = iov[0].iov_len + iov[1].iov_len;

	r = ret = FUNC11(con->sock, &msg, iov, nvec, len,
			       MSG_DONTWAIT | MSG_NOSIGNAL);
	if (ret <= 0)
		goto out_close;

	/* Process SCTP notifications */
	if (msg.msg_flags & MSG_NOTIFICATION) {
		msg.msg_control = incmsg;
		msg.msg_controllen = sizeof(incmsg);

		FUNC17(con, &msg,
				FUNC16(con->rx_page) + con->cb.base);
		FUNC15(&con->sock_mutex);
		return 0;
	}
	FUNC0(con->nodeid == 0);

	if (ret == len)
		call_again_soon = 1;
	FUNC4(&con->cb, ret);
	ret = FUNC10(con->nodeid,
					  FUNC16(con->rx_page),
					  con->cb.base, con->cb.len,
					  PAGE_CACHE_SIZE);
	if (ret == -EBADMSG) {
		FUNC12("lowcomms: addr=%p, base=%u, len=%u, "
			  "iov_len=%u, iov_base[0]=%p, read=%d",
			  FUNC16(con->rx_page), con->cb.base, con->cb.len,
			  len, iov[0].iov_base, r);
	}
	if (ret < 0)
		goto out_close;
	FUNC6(&con->cb, ret);

	if (FUNC7(&con->cb) && !call_again_soon) {
		FUNC2(con->rx_page);
		con->rx_page = NULL;
	}

	if (call_again_soon)
		goto out_resched;
	FUNC15(&con->sock_mutex);
	return 0;

out_resched:
	if (!FUNC19(CF_READ_PENDING, &con->flags))
		FUNC18(recv_workqueue, &con->rwork);
	FUNC15(&con->sock_mutex);
	return -EAGAIN;

out_close:
	FUNC15(&con->sock_mutex);
	if (ret != -EAGAIN) {
		FUNC9(con, false);
		/* Reconnect when there is something to send */
	}
	/* Don't return success if we really got EOF */
	if (ret == 0)
		ret = -EAGAIN;

	return ret;
}