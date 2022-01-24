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
struct sock {int /*<<< orphan*/  sk_sndtimeo; scalar_t__ sk_state; } ;
struct sco_conn {int /*<<< orphan*/  src; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_2__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;

/* Variables and functions */
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BT_SECURITY_LOW ; 
 int EHOSTUNREACH ; 
 int ENOMEM ; 
 int ESCO_LINK ; 
 int /*<<< orphan*/  HCI_AT_NO_BONDING ; 
 int SCO_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (struct sock*) ; 
 int /*<<< orphan*/  disable_esco ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 struct hci_dev* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct hci_dev*) ; 
 int FUNC11 (struct sco_conn*,struct sock*,int /*<<< orphan*/ *) ; 
 struct sco_conn* FUNC12 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 int /*<<< orphan*/  FUNC14 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct sock *sk)
{
	bdaddr_t *src = &FUNC3(sk)->src;
	bdaddr_t *dst = &FUNC3(sk)->dst;
	struct sco_conn *conn;
	struct hci_conn *hcon;
	struct hci_dev  *hdev;
	int err, type;

	FUNC0("%s -> %s", FUNC2(src), FUNC2(dst));

	if (!(hdev = FUNC9(dst, src)))
		return -EHOSTUNREACH;

	FUNC6(hdev);

	err = -ENOMEM;

	if (FUNC10(hdev) && !disable_esco)
		type = ESCO_LINK;
	else
		type = SCO_LINK;

	hcon = FUNC5(hdev, type, dst, BT_SECURITY_LOW, HCI_AT_NO_BONDING);
	if (!hcon)
		goto done;

	conn = FUNC12(hcon, 0);
	if (!conn) {
		FUNC4(hcon);
		goto done;
	}

	/* Update source addr of the socket */
	FUNC1(src, conn->src);

	err = FUNC11(conn, sk, NULL);
	if (err)
		goto done;

	if (hcon->state == BT_CONNECTED) {
		FUNC13(sk);
		sk->sk_state = BT_CONNECTED;
	} else {
		sk->sk_state = BT_CONNECT;
		FUNC14(sk, sk->sk_sndtimeo);
	}

done:
	FUNC8(hdev);
	FUNC7(hdev);
	return err;
}