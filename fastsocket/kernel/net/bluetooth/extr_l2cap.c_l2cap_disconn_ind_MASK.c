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
struct l2cap_conn {int disc_reason; } ;
struct hci_conn {scalar_t__ type; struct l2cap_conn* l2cap_data; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 

__attribute__((used)) static int FUNC1(struct hci_conn *hcon)
{
	struct l2cap_conn *conn = hcon->l2cap_data;

	FUNC0("hcon %p", hcon);

	if (hcon->type != ACL_LINK || !conn)
		return 0x13;

	return conn->disc_reason;
}