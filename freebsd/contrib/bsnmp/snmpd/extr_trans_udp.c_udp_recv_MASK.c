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
typedef  int /*<<< orphan*/  u_char ;
struct udp_port {int /*<<< orphan*/  dstaddr; } ;
struct tport {int dummy; } ;
struct sockcred {int dummy; } ;
struct port_input {size_t length; scalar_t__ cred; int /*<<< orphan*/  fd; int /*<<< orphan*/  buflen; int /*<<< orphan*/ * buf; int /*<<< orphan*/  peerlen; int /*<<< orphan*/  peer; } ;
struct msghdr {int msg_iovlen; char* msg_control; int msg_controllen; int msg_flags; struct iovec* msg_iov; int /*<<< orphan*/  msg_namelen; int /*<<< orphan*/  msg_name; } ;
struct iovec {int /*<<< orphan*/  iov_len; int /*<<< orphan*/ * iov_base; } ;
struct in_addr {int dummy; } ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  embuf ;
typedef  int /*<<< orphan*/  cbuf ;
struct TYPE_2__ {int /*<<< orphan*/  inTooLong; int /*<<< orphan*/  silentDrops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMGROUP_MAX ; 
 scalar_t__ FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 struct cmsghdr* FUNC2 (struct msghdr*,struct cmsghdr*) ; 
 int FUNC3 (int) ; 
 scalar_t__ IPPROTO_IP ; 
 scalar_t__ IP_RECVDSTADDR ; 
 int MSG_TRUNC ; 
 scalar_t__ SCM_CREDS ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ SOL_SOCKET ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct port_input*,struct sockcred*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ ,struct msghdr*,int /*<<< orphan*/ ) ; 
 TYPE_1__ snmpd_stats ; 

__attribute__((used)) static ssize_t
FUNC12(struct tport *tp, struct port_input *pi)
{
	u_char embuf[1000];
	char cbuf[FUNC3(FUNC4(CMGROUP_MAX)) +
	    FUNC3(sizeof(struct in_addr))];
	struct udp_port *p = (struct udp_port *)tp;
	struct msghdr msg;
	struct iovec iov[1];
	ssize_t len;
	struct cmsghdr *cmsg;
	struct sockcred *cred = NULL;

	if (pi->buf == NULL) {
		/* no buffer yet - allocate one */
		if ((pi->buf = FUNC5(0)) == NULL) {
			/* ups - could not get buffer. Read away input
			 * and drop it */
			(void)FUNC10(pi->fd, embuf, sizeof(embuf),
			    0, NULL, NULL);
			/* return error */
			return (-1);
		}
		pi->buflen = FUNC6(0);
	}

	/* try to get a message */
	msg.msg_name = pi->peer;
	msg.msg_namelen = pi->peerlen;
	msg.msg_iov = iov;
	msg.msg_iovlen = 1;
	FUNC9(cbuf, 0, sizeof(cbuf));
	msg.msg_control = cbuf;
	msg.msg_controllen = sizeof(cbuf);
	msg.msg_flags = 0;

	iov[0].iov_base = pi->buf;
	iov[0].iov_len = pi->buflen;

	len = FUNC11(pi->fd, &msg, 0);

	if (len == -1 || len == 0)
		/* receive error */
		return (-1);

	if (msg.msg_flags & MSG_TRUNC) {
		/* truncated - drop */
		snmpd_stats.silentDrops++;
		snmpd_stats.inTooLong++;
		return (-1);
	}

	pi->length = (size_t)len;

	for (cmsg = FUNC1(&msg); cmsg != NULL;
	    cmsg = FUNC2(&msg, cmsg)) {
		if (cmsg->cmsg_level == IPPROTO_IP &&
		    cmsg->cmsg_type == IP_RECVDSTADDR)
			FUNC8(&p->dstaddr, FUNC0(cmsg),
			    sizeof(struct in_addr));
		if (cmsg->cmsg_level == SOL_SOCKET &&
		    cmsg->cmsg_type == SCM_CREDS)
			cred = (struct sockcred *)(void *)FUNC0(cmsg);
	}

	if (pi->cred)
		FUNC7(pi, cred);

	return (0);
}