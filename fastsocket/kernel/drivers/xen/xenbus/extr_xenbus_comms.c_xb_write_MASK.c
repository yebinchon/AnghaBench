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
struct xenstore_domain_interface {scalar_t__ req_prod; scalar_t__ req_cons; int /*<<< orphan*/  req; } ;
typedef  scalar_t__ XENSTORE_RING_IDX ;

/* Variables and functions */
 int EIO ; 
 scalar_t__ XENSTORE_RING_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 void* FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  xb_waitq ; 
 int /*<<< orphan*/  xen_store_evtchn ; 
 struct xenstore_domain_interface* xen_store_interface ; 

int FUNC7(const void *data, unsigned len)
{
	struct xenstore_domain_interface *intf = xen_store_interface;
	XENSTORE_RING_IDX cons, prod;
	int rc;

	while (len != 0) {
		void *dst;
		unsigned int avail;

		rc = FUNC5(
			xb_waitq,
			(intf->req_prod - intf->req_cons) !=
			XENSTORE_RING_SIZE);
		if (rc < 0)
			return rc;

		/* Read indexes, then verify. */
		cons = intf->req_cons;
		prod = intf->req_prod;
		if (!FUNC0(cons, prod)) {
			intf->req_cons = intf->req_prod = 0;
			return -EIO;
		}

		dst = FUNC1(cons, prod, intf->req, &avail);
		if (avail == 0)
			continue;
		if (avail > len)
			avail = len;

		/* Must write data /after/ reading the consumer index. */
		FUNC2();

		FUNC3(dst, data, avail);
		data += avail;
		len -= avail;

		/* Other side must not see new producer until data is there. */
		FUNC6();
		intf->req_prod += avail;

		/* Implies mb(): other side will see the updated producer. */
		FUNC4(xen_store_evtchn);
	}

	return 0;
}