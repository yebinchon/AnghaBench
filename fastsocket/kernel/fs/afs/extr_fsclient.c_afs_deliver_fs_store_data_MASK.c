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
struct sk_buff {int dummy; } ;
struct afs_vnode {int /*<<< orphan*/  status; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ reply_max; int /*<<< orphan*/  store_version; int /*<<< orphan*/ * buffer; struct afs_vnode* reply; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_vnode*,struct afs_call*) ; 
 int /*<<< orphan*/  FUNC3 (struct afs_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,struct afs_vnode*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct afs_call *call,
				     struct sk_buff *skb, bool last)
{
	struct afs_vnode *vnode = call->reply;
	const __be32 *bp;

	FUNC0(",,%u", last);

	FUNC3(call, skb);
	if (!last) {
		FUNC1(" = 0 [more]");
		return 0;
	}

	if (call->reply_size != call->reply_max) {
		FUNC1(" = -EBADMSG [%u != %u]",
		       call->reply_size, call->reply_max);
		return -EBADMSG;
	}

	/* unmarshall the reply once we've received all of it */
	bp = call->buffer;
	FUNC4(&bp, &vnode->status, vnode,
				  &call->store_version);
	/* xdr_decode_AFSVolSync(&bp, call->replyX); */

	FUNC2(vnode, call);

	FUNC1(" = 0 [done]");
	return 0;
}