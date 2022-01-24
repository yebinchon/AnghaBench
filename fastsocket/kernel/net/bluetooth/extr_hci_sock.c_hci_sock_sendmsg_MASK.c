#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u16 ;
struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;
struct sk_buff {scalar_t__ data; void* dev; } ;
struct msghdr {int msg_flags; int /*<<< orphan*/  msg_iov; } ;
struct kiocb {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  raw_q; int /*<<< orphan*/  cmd_q; int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {unsigned char pkt_type; } ;
struct TYPE_5__ {struct hci_dev* hdev; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ocf_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int /*<<< orphan*/  CAP_NET_RAW ; 
 int EBADFD ; 
 int EFAULT ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPERM ; 
 unsigned char HCI_COMMAND_PKT ; 
 size_t HCI_FLT_OCF_BITS ; 
 size_t HCI_MAX_FRAME_SIZE ; 
 int /*<<< orphan*/  HCI_RAW ; 
 size_t HCI_SFLT_MAX_OGF ; 
 int MSG_DONTWAIT ; 
 int MSG_ERRQUEUE ; 
 int MSG_NOSIGNAL ; 
 int MSG_OOB ; 
 TYPE_3__* FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (struct sock*,size_t,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (scalar_t__) ; 
 size_t FUNC5 (size_t) ; 
 size_t FUNC6 (size_t) ; 
 TYPE_2__* FUNC7 (struct sock*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 TYPE_1__ hci_sec_filter ; 
 int /*<<< orphan*/  FUNC10 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC12 (struct sock*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct sk_buff*,size_t) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct kiocb *iocb, struct socket *sock,
			    struct msghdr *msg, size_t len)
{
	struct sock *sk = sock->sk;
	struct hci_dev *hdev;
	struct sk_buff *skb;
	int err;

	FUNC0("sock %p sk %p", sock, sk);

	if (msg->msg_flags & MSG_OOB)
		return -EOPNOTSUPP;

	if (msg->msg_flags & ~(MSG_DONTWAIT|MSG_NOSIGNAL|MSG_ERRQUEUE))
		return -EINVAL;

	if (len < 4 || len > HCI_MAX_FRAME_SIZE)
		return -EINVAL;

	FUNC12(sk);

	if (!(hdev = FUNC7(sk)->hdev)) {
		err = -EBADFD;
		goto done;
	}

	if (!(skb = FUNC2(sk, len, msg->msg_flags & MSG_DONTWAIT, &err)))
		goto done;

	if (FUNC13(FUNC16(skb, len), msg->msg_iov, len)) {
		err = -EFAULT;
		goto drop;
	}

	FUNC1(skb)->pkt_type = *((unsigned char *) skb->data);
	FUNC15(skb, 1);
	skb->dev = (void *) hdev;

	if (FUNC1(skb)->pkt_type == HCI_COMMAND_PKT) {
		u16 opcode = FUNC4(skb->data);
		u16 ogf = FUNC6(opcode);
		u16 ocf = FUNC5(opcode);

		if (((ogf > HCI_SFLT_MAX_OGF) ||
				!FUNC10(ocf & HCI_FLT_OCF_BITS, &hci_sec_filter.ocf_mask[ogf])) &&
					!FUNC3(CAP_NET_RAW)) {
			err = -EPERM;
			goto drop;
		}

		if (FUNC18(HCI_RAW, &hdev->flags) || (ogf == 0x3f)) {
			FUNC17(&hdev->raw_q, skb);
			FUNC9(hdev);
		} else {
			FUNC17(&hdev->cmd_q, skb);
			FUNC8(hdev);
		}
	} else {
		if (!FUNC3(CAP_NET_RAW)) {
			err = -EPERM;
			goto drop;
		}

		FUNC17(&hdev->raw_q, skb);
		FUNC9(hdev);
	}

	err = len;

done:
	FUNC14(sk);
	return err;

drop:
	FUNC11(skb);
	goto done;
}