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
struct sk_buff {scalar_t__ len; } ;
struct in_addr {int dummy; } ;
struct afs_server {int dummy; } ;
struct afs_call {int /*<<< orphan*/  work; struct afs_server* server; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  saddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AFS_CALL_REPLYING ; 
 int EBADMSG ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SRXAFSCB_InitCallBackState ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 struct afs_server* FUNC2 (struct in_addr*) ; 
 TYPE_1__* FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_addr*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct afs_call *call,
					       struct sk_buff *skb,
					       bool last)
{
	struct afs_server *server;
	struct in_addr addr;

	FUNC1(",{%u},%d", skb->len, last);

	if (skb->len > 0)
		return -EBADMSG;
	if (!last)
		return 0;

	/* no unmarshalling required */
	call->state = AFS_CALL_REPLYING;

	/* we'll need the file server record as that tells us which set of
	 * vnodes to operate upon */
	FUNC4(&addr, &FUNC3(skb)->saddr, 4);
	server = FUNC2(&addr);
	if (!server)
		return -ENOTCONN;
	call->server = server;

	FUNC0(&call->work, SRXAFSCB_InitCallBackState);
	FUNC5(&call->work);
	return 0;
}