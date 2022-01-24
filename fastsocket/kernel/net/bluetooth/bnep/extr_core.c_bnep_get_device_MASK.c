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
struct hci_dev {int dummy; } ;
struct device {int dummy; } ;
struct hci_conn {struct device dev; } ;
struct bnep_session {TYPE_1__* sock; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  dst; int /*<<< orphan*/  src; } ;
struct TYPE_3__ {int /*<<< orphan*/  sk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ACL_LINK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC1 (struct hci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 struct hci_dev* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct device *FUNC4(struct bnep_session *session)
{
	bdaddr_t *src = &FUNC0(session->sock->sk)->src;
	bdaddr_t *dst = &FUNC0(session->sock->sk)->dst;
	struct hci_dev *hdev;
	struct hci_conn *conn;

	hdev = FUNC3(dst, src);
	if (!hdev)
		return NULL;

	conn = FUNC1(hdev, ACL_LINK, dst);

	FUNC2(hdev);

	return conn ? &conn->dev : NULL;
}