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
struct sk_buff {int /*<<< orphan*/  len; } ;
struct afs_vnode {int /*<<< orphan*/  status; } ;
struct afs_call {scalar_t__ reply_size; scalar_t__ reply_max; int /*<<< orphan*/  reply4; int /*<<< orphan*/ * reply3; int /*<<< orphan*/  reply2; int /*<<< orphan*/ * buffer; int /*<<< orphan*/  unmarshall; struct afs_vnode* reply; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EBADMSG ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct afs_call*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const**,int /*<<< orphan*/ *,struct afs_vnode*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct afs_call *call,
				       struct sk_buff *skb, bool last)
{
	struct afs_vnode *vnode = call->reply;
	const __be32 *bp;

	FUNC0("{%u},{%u},%d", call->unmarshall, skb->len, last);

	FUNC2(call, skb);
	if (!last)
		return 0;

	if (call->reply_size != call->reply_max)
		return -EBADMSG;

	/* unmarshall the reply once we've received all of it */
	bp = call->buffer;
	FUNC5(&bp, call->reply2);
	FUNC4(&bp, call->reply3, NULL, NULL);
	FUNC4(&bp, &vnode->status, vnode, NULL);
	FUNC3(&bp, call->reply4);
	/* xdr_decode_AFSVolSync(&bp, call->replyX); */

	FUNC1(" = 0 [done]");
	return 0;
}