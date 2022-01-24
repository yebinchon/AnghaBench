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
struct hci_dev {int /*<<< orphan*/  name; } ;
struct hci_conn {scalar_t__ state; int /*<<< orphan*/  handle; struct hci_conn* link; void* auth_type; void* sec_level; } ;
typedef  int /*<<< orphan*/  bdaddr_t ;
typedef  void* __u8 ;

/* Variables and functions */
 int ACL_LINK ; 
 scalar_t__ BT_CLOSED ; 
 scalar_t__ BT_CONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ BT_OPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 struct hci_conn* FUNC4 (struct hci_dev*,int,int /*<<< orphan*/ *) ; 
 struct hci_conn* FUNC5 (struct hci_dev*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC7 (struct hci_conn*) ; 
 int /*<<< orphan*/  FUNC8 (struct hci_conn*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct hci_dev*) ; 

struct hci_conn *FUNC10(struct hci_dev *hdev, int type, bdaddr_t *dst, __u8 sec_level, __u8 auth_type)
{
	struct hci_conn *acl;
	struct hci_conn *sco;

	FUNC0("%s dst %s", hdev->name, FUNC1(dst));

	if (!(acl = FUNC5(hdev, ACL_LINK, dst))) {
		if (!(acl = FUNC4(hdev, ACL_LINK, dst)))
			return NULL;
	}

	FUNC6(acl);

	if (acl->state == BT_OPEN || acl->state == BT_CLOSED) {
		acl->sec_level = sec_level;
		acl->auth_type = auth_type;
		FUNC2(acl);
	}

	if (type == ACL_LINK)
		return acl;

	if (!(sco = FUNC5(hdev, type, dst))) {
		if (!(sco = FUNC4(hdev, type, dst))) {
			FUNC7(acl);
			return NULL;
		}
	}

	acl->link = sco;
	sco->link = acl;

	FUNC6(sco);

	if (acl->state == BT_CONNECTED &&
			(sco->state == BT_OPEN || sco->state == BT_CLOSED)) {
		if (FUNC9(hdev))
			FUNC8(sco, acl->handle);
		else
			FUNC3(sco, acl->handle);
	}

	return sco;
}