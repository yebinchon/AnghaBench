#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sock {scalar_t__ sk_type; scalar_t__ sk_state; int /*<<< orphan*/  sk_sndtimeo; } ;
struct l2cap_conn {int /*<<< orphan*/  src; } ;
struct hci_dev {int dummy; } ;
struct hci_conn {scalar_t__ state; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {scalar_t__ psm; int sec_level; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 scalar_t__ BT_CONNECT ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
#define  BT_SECURITY_HIGH 129 
 int const BT_SECURITY_LOW ; 
#define  BT_SECURITY_MEDIUM 128 
 int const BT_SECURITY_SDP ; 
 int EHOSTUNREACH ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HCI_AT_DEDICATED_BONDING ; 
 int /*<<< orphan*/  HCI_AT_DEDICATED_BONDING_MITM ; 
 int /*<<< orphan*/  HCI_AT_GENERAL_BONDING ; 
 int /*<<< orphan*/  HCI_AT_GENERAL_BONDING_MITM ; 
 int /*<<< orphan*/  HCI_AT_NO_BONDING ; 
 int /*<<< orphan*/  HCI_AT_NO_BONDING_MITM ; 
 scalar_t__ SOCK_RAW ; 
 scalar_t__ SOCK_SEQPACKET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (struct sock*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct hci_conn*) ; 
 struct hci_conn* FUNC6 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC9 (struct hci_dev*) ; 
 struct hci_dev* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct l2cap_conn*,struct sock*,int /*<<< orphan*/ *) ; 
 struct l2cap_conn* FUNC12 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct sock*) ; 
 TYPE_1__* FUNC14 (struct sock*) ; 
 int /*<<< orphan*/  FUNC15 (struct sock*) ; 
 int /*<<< orphan*/  FUNC16 (struct sock*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct sock *sk)
{
	bdaddr_t *src = &FUNC3(sk)->src;
	bdaddr_t *dst = &FUNC3(sk)->dst;
	struct l2cap_conn *conn;
	struct hci_conn *hcon;
	struct hci_dev *hdev;
	__u8 auth_type;
	int err;

	FUNC0("%s -> %s psm 0x%2.2x", FUNC2(src), FUNC2(dst),
							FUNC14(sk)->psm);

	hdev = FUNC10(dst, src);
	if (!hdev)
		return -EHOSTUNREACH;

	FUNC7(hdev);

	err = -ENOMEM;

	if (sk->sk_type == SOCK_RAW) {
		switch (FUNC14(sk)->sec_level) {
		case BT_SECURITY_HIGH:
			auth_type = HCI_AT_DEDICATED_BONDING_MITM;
			break;
		case BT_SECURITY_MEDIUM:
			auth_type = HCI_AT_DEDICATED_BONDING;
			break;
		default:
			auth_type = HCI_AT_NO_BONDING;
			break;
		}
	} else if (FUNC14(sk)->psm == FUNC4(0x0001)) {
		if (FUNC14(sk)->sec_level == BT_SECURITY_HIGH)
			auth_type = HCI_AT_NO_BONDING_MITM;
		else
			auth_type = HCI_AT_NO_BONDING;

		if (FUNC14(sk)->sec_level == BT_SECURITY_LOW)
			FUNC14(sk)->sec_level = BT_SECURITY_SDP;
	} else {
		switch (FUNC14(sk)->sec_level) {
		case BT_SECURITY_HIGH:
			auth_type = HCI_AT_GENERAL_BONDING_MITM;
			break;
		case BT_SECURITY_MEDIUM:
			auth_type = HCI_AT_GENERAL_BONDING;
			break;
		default:
			auth_type = HCI_AT_NO_BONDING;
			break;
		}
	}

	hcon = FUNC6(hdev, ACL_LINK, dst,
					FUNC14(sk)->sec_level, auth_type);
	if (!hcon)
		goto done;

	conn = FUNC12(hcon, 0);
	if (!conn) {
		FUNC5(hcon);
		goto done;
	}

	err = 0;

	/* Update source addr of the socket */
	FUNC1(src, conn->src);

	FUNC11(conn, sk, NULL);

	sk->sk_state = BT_CONNECT;
	FUNC16(sk, sk->sk_sndtimeo);

	if (hcon->state == BT_CONNECTED) {
		if (sk->sk_type != SOCK_SEQPACKET) {
			FUNC15(sk);
			sk->sk_state = BT_CONNECTED;
		} else
			FUNC13(sk);
	}

done:
	FUNC9(hdev);
	FUNC8(hdev);
	return err;
}