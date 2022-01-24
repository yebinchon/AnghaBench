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
typedef  int /*<<< orphan*/  u8 ;
struct l2cap_conn {int dummy; } ;
struct hci_conn {scalar_t__ type; int /*<<< orphan*/  dst; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct l2cap_conn* FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct l2cap_conn*) ; 

__attribute__((used)) static int FUNC6(struct hci_conn *hcon, u8 status)
{
	struct l2cap_conn *conn;

	FUNC0("hcon %p bdaddr %s status %d", hcon, FUNC1(&hcon->dst), status);

	if (hcon->type != ACL_LINK)
		return 0;

	if (!status) {
		conn = FUNC3(hcon, status);
		if (conn)
			FUNC5(conn);
	} else
		FUNC4(hcon, FUNC2(status));

	return 0;
}