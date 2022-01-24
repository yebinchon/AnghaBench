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
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  NLMSG_GOODSIZE ; 
 void* FUNC0 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ieee802154_coordinator_family ; 
 int /*<<< orphan*/  ieee802154_seq_lock ; 
 int /*<<< orphan*/  ieee802154_seq_num ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 struct sk_buff* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct sk_buff *FUNC5(int flags, u8 req)
{
	void *hdr;
	struct sk_buff *msg = FUNC2(NLMSG_GOODSIZE, GFP_ATOMIC);
	unsigned long f;

	if (!msg)
		return NULL;

	FUNC3(&ieee802154_seq_lock, f);
	hdr = FUNC0(msg, 0, ieee802154_seq_num++,
			&ieee802154_coordinator_family, flags, req);
	FUNC4(&ieee802154_seq_lock, f);
	if (!hdr) {
		FUNC1(msg);
		return NULL;
	}

	return msg;
}