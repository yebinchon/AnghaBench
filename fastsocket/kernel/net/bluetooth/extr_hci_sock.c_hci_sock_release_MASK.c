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
struct sock {int /*<<< orphan*/  sk_write_queue; int /*<<< orphan*/  sk_receive_queue; } ;
struct hci_dev {int /*<<< orphan*/  promisc; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 TYPE_1__* FUNC4 (struct sock*) ; 
 int /*<<< orphan*/  hci_sk_list ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sock*) ; 
 int /*<<< orphan*/  FUNC7 (struct sock*) ; 

__attribute__((used)) static int FUNC8(struct socket *sock)
{
	struct sock *sk = sock->sk;
	struct hci_dev *hdev;

	FUNC0("sock %p sk %p", sock, sk);

	if (!sk)
		return 0;

	hdev = FUNC4(sk)->hdev;

	FUNC2(&hci_sk_list, sk);

	if (hdev) {
		FUNC1(&hdev->promisc);
		FUNC3(hdev);
	}

	FUNC6(sk);

	FUNC5(&sk->sk_receive_queue);
	FUNC5(&sk->sk_write_queue);

	FUNC7(sk);
	return 0;
}