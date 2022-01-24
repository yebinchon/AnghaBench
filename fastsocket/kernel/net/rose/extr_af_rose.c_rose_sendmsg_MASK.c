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
struct sockaddr_rose {int dummy; } ;
struct sock {int sk_shutdown; scalar_t__ sk_state; int /*<<< orphan*/  sk_write_queue; } ;
struct sk_buff {int* data; size_t len; int free; int arp; struct sock* sk; } ;
struct rose_sock {int dest_ndigis; int lci; scalar_t__ qbitincl; int /*<<< orphan*/ * dest_digis; int /*<<< orphan*/  dest_call; int /*<<< orphan*/  dest_addr; int /*<<< orphan*/ * device; int /*<<< orphan*/ * neighbour; } ;
struct msghdr {int msg_flags; int msg_namelen; int /*<<< orphan*/  msg_iov; scalar_t__ msg_name; } ;
struct kiocb {int dummy; } ;
struct full_sockaddr_rose {int srose_ndigis; scalar_t__ srose_family; int /*<<< orphan*/ * srose_digis; int /*<<< orphan*/  srose_call; int /*<<< orphan*/  srose_addr; } ;

/* Variables and functions */
 scalar_t__ AF_ROSE ; 
 size_t AX25_BPQ_HEADER_LEN ; 
 size_t AX25_MAX_HEADER_LEN ; 
 int EADDRNOTAVAIL ; 
 int EINVAL ; 
 int EISCONN ; 
 int EMSGSIZE ; 
 int ENETUNREACH ; 
 int ENOTCONN ; 
 int EPIPE ; 
 int MSG_CMSG_COMPAT ; 
 int MSG_DONTWAIT ; 
 int MSG_EOR ; 
 int M_BIT ; 
 unsigned char ROSE_DATA ; 
 int ROSE_GFI ; 
 size_t ROSE_MIN_LEN ; 
 size_t ROSE_PACLEN ; 
 unsigned char ROSE_Q_BIT ; 
 int SEND_SHUTDOWN ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  FUNC0 (struct sock*,char*) ; 
 int /*<<< orphan*/  SOCK_ZAPPED ; 
 scalar_t__ TCP_ESTABLISHED ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (struct full_sockaddr_rose*,struct sockaddr_rose*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct full_sockaddr_rose*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 struct rose_sock* FUNC7 (struct sock*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,unsigned char*,size_t) ; 
 int FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct sk_buff*,int) ; 
 unsigned char* FUNC14 (struct sk_buff*,size_t) ; 
 unsigned char* FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*) ; 
 struct sk_buff* FUNC20 (struct sock*,int,int,int*) ; 
 scalar_t__ FUNC21 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC22(struct kiocb *iocb, struct socket *sock,
			struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct rose_sock *rose = FUNC7(sk);
	struct sockaddr_rose *usrose = (struct sockaddr_rose *)msg->msg_name;
	int err;
	struct full_sockaddr_rose srose;
	struct sk_buff *skb;
	unsigned char *asmptr;
	int n, size, qbit = 0;

	if (msg->msg_flags & ~(MSG_DONTWAIT|MSG_EOR|MSG_CMSG_COMPAT))
		return -EINVAL;

	if (FUNC21(sk, SOCK_ZAPPED))
		return -EADDRNOTAVAIL;

	if (sk->sk_shutdown & SEND_SHUTDOWN) {
		FUNC9(SIGPIPE, current, 0);
		return -EPIPE;
	}

	if (rose->neighbour == NULL || rose->device == NULL)
		return -ENETUNREACH;

	if (usrose != NULL) {
		if (msg->msg_namelen != sizeof(struct sockaddr_rose) && msg->msg_namelen != sizeof(struct full_sockaddr_rose))
			return -EINVAL;
		FUNC5(&srose, 0, sizeof(struct full_sockaddr_rose));
		FUNC3(&srose, usrose, msg->msg_namelen);
		if (FUNC8(&rose->dest_addr, &srose.srose_addr) != 0 ||
		    FUNC1(&rose->dest_call, &srose.srose_call) != 0)
			return -EISCONN;
		if (srose.srose_ndigis != rose->dest_ndigis)
			return -EISCONN;
		if (srose.srose_ndigis == rose->dest_ndigis) {
			for (n = 0 ; n < srose.srose_ndigis ; n++)
				if (FUNC1(&rose->dest_digis[n],
					    &srose.srose_digis[n]))
					return -EISCONN;
		}
		if (srose.srose_family != AF_ROSE)
			return -EINVAL;
	} else {
		if (sk->sk_state != TCP_ESTABLISHED)
			return -ENOTCONN;

		srose.srose_family = AF_ROSE;
		srose.srose_addr   = rose->dest_addr;
		srose.srose_call   = rose->dest_call;
		srose.srose_ndigis = rose->dest_ndigis;
		for (n = 0 ; n < rose->dest_ndigis ; n++)
			srose.srose_digis[n] = rose->dest_digis[n];
	}

	FUNC0(sk, "ROSE: sendto: Addresses built.\n");

	/* Build a packet */
	FUNC0(sk, "ROSE: sendto: building packet.\n");
	/* Sanity check the packet size */
	if (len > 65535)
		return -EMSGSIZE;

	size = len + AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN + ROSE_MIN_LEN;

	if ((skb = FUNC20(sk, size, msg->msg_flags & MSG_DONTWAIT, &err)) == NULL)
		return err;

	FUNC17(skb, AX25_BPQ_HEADER_LEN + AX25_MAX_HEADER_LEN + ROSE_MIN_LEN);

	/*
	 *	Put the data on the end
	 */
	FUNC0(sk, "ROSE: Appending user data\n");

	FUNC18(skb);
	FUNC15(skb, len);

	err = FUNC4(FUNC19(skb), msg->msg_iov, len);
	if (err) {
		FUNC2(skb);
		return err;
	}

	/*
	 *	If the Q BIT Include socket option is in force, the first
	 *	byte of the user data is the logical value of the Q Bit.
	 */
	if (rose->qbitincl) {
		qbit = skb->data[0];
		FUNC13(skb, 1);
	}

	/*
	 *	Push down the ROSE header
	 */
	asmptr = FUNC14(skb, ROSE_MIN_LEN);

	FUNC0(sk, "ROSE: Building Network Header.\n");

	/* Build a ROSE Network header */
	asmptr[0] = ((rose->lci >> 8) & 0x0F) | ROSE_GFI;
	asmptr[1] = (rose->lci >> 0) & 0xFF;
	asmptr[2] = ROSE_DATA;

	if (qbit)
		asmptr[0] |= ROSE_Q_BIT;

	FUNC0(sk, "ROSE: Built header.\n");

	FUNC0(sk, "ROSE: Transmitting buffer\n");

	if (sk->sk_state != TCP_ESTABLISHED) {
		FUNC2(skb);
		return -ENOTCONN;
	}

#ifdef M_BIT
#define ROSE_PACLEN (256-ROSE_MIN_LEN)
	if (skb->len - ROSE_MIN_LEN > ROSE_PACLEN) {
		unsigned char header[ROSE_MIN_LEN];
		struct sk_buff *skbn;
		int frontlen;
		int lg;

		/* Save a copy of the Header */
		skb_copy_from_linear_data(skb, header, ROSE_MIN_LEN);
		skb_pull(skb, ROSE_MIN_LEN);

		frontlen = skb_headroom(skb);

		while (skb->len > 0) {
			if ((skbn = sock_alloc_send_skb(sk, frontlen + ROSE_PACLEN, 0, &err)) == NULL) {
				kfree_skb(skb);
				return err;
			}

			skbn->sk   = sk;
			skbn->free = 1;
			skbn->arp  = 1;

			skb_reserve(skbn, frontlen);

			lg = (ROSE_PACLEN > skb->len) ? skb->len : ROSE_PACLEN;

			/* Copy the user data */
			skb_copy_from_linear_data(skb, skb_put(skbn, lg), lg);
			skb_pull(skb, lg);

			/* Duplicate the Header */
			skb_push(skbn, ROSE_MIN_LEN);
			skb_copy_to_linear_data(skbn, header, ROSE_MIN_LEN);

			if (skb->len > 0)
				skbn->data[2] |= M_BIT;

			skb_queue_tail(&sk->sk_write_queue, skbn); /* Throw it on the queue */
		}

		skb->free = 1;
		kfree_skb(skb);
	} else {
		skb_queue_tail(&sk->sk_write_queue, skb);		/* Throw it on the queue */
	}
#else
	FUNC16(&sk->sk_write_queue, skb);	/* Shove it onto the queue */
#endif

	FUNC6(sk);

	return len;
}