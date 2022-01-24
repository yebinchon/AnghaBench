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
struct hci_conn {scalar_t__ type; } ;

/* Variables and functions */
 scalar_t__ ACL_LINK ; 
 int /*<<< orphan*/  FUNC0 (char*,struct hci_conn*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_conn*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct hci_conn *hcon, u8 reason)
{
	FUNC0("hcon %p reason %d", hcon, reason);

	if (hcon->type != ACL_LINK)
		return 0;

	FUNC2(hcon, FUNC1(reason));

	return 0;
}