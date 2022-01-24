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
struct sock {int dummy; } ;
struct l2cap_conn {int /*<<< orphan*/  hcon; } ;
typedef  int /*<<< orphan*/  __u8 ;
struct TYPE_2__ {scalar_t__ psm; int sec_level; struct l2cap_conn* conn; } ;

/* Variables and functions */
#define  BT_SECURITY_HIGH 129 
 int BT_SECURITY_LOW ; 
#define  BT_SECURITY_MEDIUM 128 
 int BT_SECURITY_SDP ; 
 int /*<<< orphan*/  HCI_AT_GENERAL_BONDING ; 
 int /*<<< orphan*/  HCI_AT_GENERAL_BONDING_MITM ; 
 int /*<<< orphan*/  HCI_AT_NO_BONDING ; 
 int /*<<< orphan*/  HCI_AT_NO_BONDING_MITM ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct sock*) ; 

__attribute__((used)) static inline int FUNC3(struct sock *sk)
{
	struct l2cap_conn *conn = FUNC2(sk)->conn;
	__u8 auth_type;

	if (FUNC2(sk)->psm == FUNC0(0x0001)) {
		if (FUNC2(sk)->sec_level == BT_SECURITY_HIGH)
			auth_type = HCI_AT_NO_BONDING_MITM;
		else
			auth_type = HCI_AT_NO_BONDING;

		if (FUNC2(sk)->sec_level == BT_SECURITY_LOW)
			FUNC2(sk)->sec_level = BT_SECURITY_SDP;
	} else {
		switch (FUNC2(sk)->sec_level) {
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

	return FUNC1(conn->hcon, FUNC2(sk)->sec_level,
								auth_type);
}