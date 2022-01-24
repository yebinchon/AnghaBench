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
struct socket {struct sock* sk; } ;
struct sockaddr_hci {scalar_t__ hci_family; scalar_t__ hci_dev; } ;
struct sockaddr {int dummy; } ;
struct sock {int /*<<< orphan*/  sk_state; } ;
struct hci_dev {int /*<<< orphan*/  promisc; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;

/* Variables and functions */
 scalar_t__ AF_BLUETOOTH ; 
 int /*<<< orphan*/  BT_BOUND ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int EALREADY ; 
 int EINVAL ; 
 int ENODEV ; 
 scalar_t__ HCI_DEV_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct hci_dev* FUNC2 (scalar_t__) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  FUNC5 (struct sock*) ; 

__attribute__((used)) static int FUNC6(struct socket *sock, struct sockaddr *addr, int addr_len)
{
	struct sockaddr_hci *haddr = (struct sockaddr_hci *) addr;
	struct sock *sk = sock->sk;
	struct hci_dev *hdev = NULL;
	int err = 0;

	FUNC0("sock %p sk %p", sock, sk);

	if (!haddr || haddr->hci_family != AF_BLUETOOTH)
		return -EINVAL;

	FUNC4(sk);

	if (FUNC3(sk)->hdev) {
		err = -EALREADY;
		goto done;
	}

	if (haddr->hci_dev != HCI_DEV_NONE) {
		if (!(hdev = FUNC2(haddr->hci_dev))) {
			err = -ENODEV;
			goto done;
		}

		FUNC1(&hdev->promisc);
	}

	FUNC3(sk)->hdev = hdev;
	sk->sk_state = BT_BOUND;

done:
	FUNC5(sk);
	return err;
}