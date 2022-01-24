#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wlandevice_t ;
typedef  int /*<<< orphan*/  u8 ;
typedef  void* u32 ;
struct TYPE_5__ {int /*<<< orphan*/  data; } ;
struct TYPE_6__ {TYPE_1__ mibattribute; int /*<<< orphan*/  msgcode; } ;
typedef  TYPE_2__ p80211msg_dot11req_mibset_t ;
struct TYPE_7__ {void* data; void* did; } ;
typedef  TYPE_3__ p80211item_uint32_t ;
typedef  int /*<<< orphan*/  mibitem ;

/* Variables and functions */
 int /*<<< orphan*/  DIDmsg_dot11req_mibset ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(wlandevice_t *wlandev, u32 did, u32 data)
{
	p80211msg_dot11req_mibset_t msg;
	p80211item_uint32_t mibitem;
	int result;

	msg.msgcode = DIDmsg_dot11req_mibset;
	mibitem.did = did;
	mibitem.data = data;
	FUNC0(&msg.mibattribute.data, &mibitem, sizeof(mibitem));
	result = FUNC1(wlandev, (u8 *) & msg);

	return result;
}