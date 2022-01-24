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
struct sockaddr_hci {int /*<<< orphan*/  hci_dev; int /*<<< orphan*/  hci_family; } ;
struct sockaddr {int dummy; } ;
struct sock {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (char*,struct socket*,struct sock*) ; 
 int EBADFD ; 
 TYPE_1__* FUNC1 (struct sock*) ; 
 int /*<<< orphan*/  FUNC2 (struct sock*) ; 
 int /*<<< orphan*/  FUNC3 (struct sock*) ; 

__attribute__((used)) static int FUNC4(struct socket *sock, struct sockaddr *addr, int *addr_len, int peer)
{
	struct sockaddr_hci *haddr = (struct sockaddr_hci *) addr;
	struct sock *sk = sock->sk;
	struct hci_dev *hdev = FUNC1(sk)->hdev;

	FUNC0("sock %p sk %p", sock, sk);

	if (!hdev)
		return -EBADFD;

	FUNC2(sk);

	*addr_len = sizeof(*haddr);
	haddr->hci_family = AF_BLUETOOTH;
	haddr->hci_dev    = hdev->id;

	FUNC3(sk);
	return 0;
}