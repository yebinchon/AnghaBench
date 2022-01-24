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
typedef  scalar_t__ u8 ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct l2cap_conn {int disc_reason; int /*<<< orphan*/  info_timer; TYPE_2__ chan_list; int /*<<< orphan*/  lock; scalar_t__ feat_mask; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; int /*<<< orphan*/  mtu; struct hci_conn* hcon; } ;
struct hci_conn {int /*<<< orphan*/  dst; TYPE_1__* hdev; struct l2cap_conn* l2cap_data; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  acl_mtu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,struct l2cap_conn*) ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct l2cap_conn* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2cap_info_timeout ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct l2cap_conn *FUNC5(struct hci_conn *hcon, u8 status)
{
	struct l2cap_conn *conn = hcon->l2cap_data;

	if (conn || status)
		return conn;

	conn = FUNC1(sizeof(struct l2cap_conn), GFP_ATOMIC);
	if (!conn)
		return NULL;

	hcon->l2cap_data = conn;
	conn->hcon = hcon;

	FUNC0("hcon %p conn %p", hcon, conn);

	conn->mtu = hcon->hdev->acl_mtu;
	conn->src = &hcon->hdev->bdaddr;
	conn->dst = &hcon->dst;

	conn->feat_mask = 0;

	FUNC4(&conn->lock);
	FUNC2(&conn->chan_list.lock);

	FUNC3(&conn->info_timer, l2cap_info_timeout,
						(unsigned long) conn);

	conn->disc_reason = 0x13;

	return conn;
}