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
struct socket {struct sock* sk; } ;
struct sockaddr_ax25 {scalar_t__ sax25_family; int /*<<< orphan*/  sax25_call; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct nr_sock {int /*<<< orphan*/  your_id; int /*<<< orphan*/  your_index; int /*<<< orphan*/  dest_addr; int /*<<< orphan*/ * device; } ;
struct msghdr {int msg_flags; int msg_namelen; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
typedef  int /*<<< orphan*/  sax ;

/* Variables and functions */
 scalar_t__ AF_NETROM ; 
 int EADDRNOTAVAIL ; 
 int EFAULT ; 
 int EINVAL ; 
 int EISCONN ; 
 int EMSGSIZE ; 
 int ENETUNREACH ; 
 int ENOTCONN ; 
 int EPIPE ; 
 int MSG_CMSG_COMPAT ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int /*<<< orphan*/  NR_INFO ; 
 size_t NR_NETWORK_LEN ; 
 size_t NR_TRANSPORT_LEN ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*,struct sk_buff*) ; 
 struct nr_sock* FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned char* FUNC9 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*) ; 
 struct sk_buff* FUNC14 (struct sock*,int,int,int*) ; 
 scalar_t__ FUNC15 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(struct kiocb *iocb, struct socket *sock,
		      struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct nr_sock *nr = FUNC6(sk);
	struct sockaddr_ax25 *usax = (struct sockaddr_ax25 *)msg->msg_name;
	int err;
	struct sockaddr_ax25 sax;
	struct sk_buff *skb;
	unsigned char *asmptr;
	int size;

	if (msg->msg_flags & ~(MSG_DONTWAIT|MSG_EOR|MSG_CMSG_COMPAT))
		return -EINVAL;

	FUNC3(sk);
	if (FUNC15(sk, SOCK_ZAPPED)) {
		err = -EADDRNOTAVAIL;
		goto out;
	}

	if (sk->sk_shutdown & SEND_SHUTDOWN) {
		FUNC8(SIGPIPE, current, 0);
		err = -EPIPE;
		goto out;
	}

	if (nr->device == NULL) {
		err = -ENETUNREACH;
		goto out;
	}

	if (usax) {
		if (msg->msg_namelen < sizeof(sax)) {
			err = -EINVAL;
			goto out;
		}
		sax = *usax;
		if (FUNC1(&nr->dest_addr, &sax.sax25_call) != 0) {
			err = -EISCONN;
			goto out;
		}
		if (sax.sax25_family != AF_NETROM) {
			err = -EINVAL;
			goto out;
		}
	} else {
		if (sk->sk_state != TCP_ESTABLISHED) {
			err = -ENOTCONN;
			goto out;
		}
		sax.sax25_family = AF_NETROM;
		sax.sax25_call   = nr->dest_addr;
	}

	FUNC0(sk, "NET/ROM: sendto: Addresses built.\n");

	/* Build a packet - the conventional user limit is 236 bytes. We can
	   do ludicrously large NetROM frames but must not overflow */
	if (len > 65536) {
		err = -EMSGSIZE;
		goto out;
	}

	FUNC0(sk, "NET/ROM: sendto: building packet.\n");
	size = len + NR_NETWORK_LEN + NR_TRANSPORT_LEN;

	if ((skb = FUNC14(sk, size, msg->msg_flags & MSG_DONTWAIT, &err)) == NULL)
		goto out;

	FUNC11(skb, size - len);
	FUNC12(skb);

	/*
	 *	Push down the NET/ROM header
	 */

	asmptr = FUNC9(skb, NR_TRANSPORT_LEN);
	FUNC0(sk, "Building NET/ROM Header.\n");

	/* Build a NET/ROM Transport header */

	*asmptr++ = nr->your_index;
	*asmptr++ = nr->your_id;
	*asmptr++ = 0;		/* To be filled in later */
	*asmptr++ = 0;		/*      Ditto            */
	*asmptr++ = NR_INFO;
	FUNC0(sk, "Built header.\n");

	/*
	 *	Put the data on the end
	 */
	FUNC10(skb, len);

	FUNC0(sk, "NET/ROM: Appending user data\n");

	/* User data follows immediately after the NET/ROM transport header */
	if (FUNC4(FUNC13(skb), msg->msg_iov, len)) {
		FUNC2(skb);
		err = -EFAULT;
		goto out;
	}

	FUNC0(sk, "NET/ROM: Transmitting buffer\n");

	if (sk->sk_state != TCP_ESTABLISHED) {
		FUNC2(skb);
		err = -ENOTCONN;
		goto out;
	}

	FUNC5(sk, skb);	/* Shove it onto the queue */

	err = len;
out:
	FUNC7(sk);
	return err;
}