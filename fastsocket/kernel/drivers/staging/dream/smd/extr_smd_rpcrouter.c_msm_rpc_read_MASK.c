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
struct rr_fragment {scalar_t__ next; int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct msm_rpc_endpoint {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct msm_rpc_endpoint*,struct rr_fragment**,unsigned int,long) ; 
 int /*<<< orphan*/  FUNC1 (struct rr_fragment*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC3 (int) ; 

int FUNC4(struct msm_rpc_endpoint *ept, void **buffer,
		 unsigned user_len, long timeout)
{
	struct rr_fragment *frag, *next;
	char *buf;
	int rc;

	rc = FUNC0(ept, &frag, user_len, timeout);
	if (rc <= 0)
		return rc;

	/* single-fragment messages conveniently can be
	 * returned as-is (the buffer is at the front)
	 */
	if (frag->next == 0) {
		*buffer = (void*) frag;
		return rc;
	}

	/* multi-fragment messages, we have to do it the
	 * hard way, which is rather disgusting right now
	 */
	buf = FUNC3(rc);
	*buffer = buf;

	while (frag != NULL) {
		FUNC2(buf, frag->data, frag->length);
		next = frag->next;
		buf += frag->length;
		FUNC1(frag);
		frag = next;
	}

	return rc;
}