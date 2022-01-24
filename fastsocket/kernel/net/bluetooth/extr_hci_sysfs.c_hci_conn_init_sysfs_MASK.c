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
struct hci_dev {int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * parent; int /*<<< orphan*/  class; int /*<<< orphan*/ * type; } ;
struct hci_conn {int /*<<< orphan*/  work_del; int /*<<< orphan*/  work_add; TYPE_1__ dev; struct hci_dev* hdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  add_conn ; 
 int /*<<< orphan*/  bt_class ; 
 int /*<<< orphan*/  bt_link ; 
 int /*<<< orphan*/  del_conn ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

void FUNC3(struct hci_conn *conn)
{
	struct hci_dev *hdev = conn->hdev;

	FUNC0("conn %p", conn);

	conn->dev.type = &bt_link;
	conn->dev.class = bt_class;
	conn->dev.parent = &hdev->dev;

	FUNC2(&conn->dev);

	FUNC1(&conn->work_add, add_conn);
	FUNC1(&conn->work_del, del_conn);
}