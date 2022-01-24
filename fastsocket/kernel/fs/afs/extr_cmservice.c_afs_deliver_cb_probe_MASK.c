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
struct sk_buff {scalar_t__ len; } ;
struct afs_call {int /*<<< orphan*/  work; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_REPLYING ; 
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRXAFSCB_Probe ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct afs_call *call, struct sk_buff *skb,
				bool last)
{
	FUNC1(",{%u},%d", skb->len, last);

	if (skb->len > 0)
		return -EBADMSG;
	if (!last)
		return 0;

	/* no unmarshalling required */
	call->state = AFS_CALL_REPLYING;

	FUNC0(&call->work, SRXAFSCB_Probe);
	FUNC2(&call->work);
	return 0;
}