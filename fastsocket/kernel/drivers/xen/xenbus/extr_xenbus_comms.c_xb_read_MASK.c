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
struct xenstore_domain_interface {scalar_t__ rsp_cons; int /*<<< orphan*/  rsp; scalar_t__ rsp_prod; } ;
typedef  scalar_t__ XENSTORE_RING_IDX ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 char* FUNC1 (scalar_t__,scalar_t__,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  xen_store_evtchn ; 
 struct xenstore_domain_interface* xen_store_interface ; 

int FUNC8(void *data, unsigned len)
{
	struct xenstore_domain_interface *intf = xen_store_interface;
	XENSTORE_RING_IDX cons, prod;
	int rc;

	while (len != 0) {
		unsigned int avail;
		const char *src;

		rc = FUNC7();
		if (rc < 0)
			return rc;

		/* Read indexes, then verify. */
		cons = intf->rsp_cons;
		prod = intf->rsp_prod;
		if (!FUNC0(cons, prod)) {
			intf->rsp_cons = intf->rsp_prod = 0;
			return -EIO;
		}

		src = FUNC1(cons, prod, intf->rsp, &avail);
		if (avail == 0)
			continue;
		if (avail > len)
			avail = len;

		/* Must read data /after/ reading the producer index. */
		FUNC6();

		FUNC3(data, src, avail);
		data += avail;
		len -= avail;

		/* Other side must not see free space until we've copied out */
		FUNC2();
		intf->rsp_cons += avail;

		FUNC5("Finished read of %i bytes (%i to go)\n", avail, len);

		/* Implies mb(): other side will see the updated consumer. */
		FUNC4(xen_store_evtchn);
	}

	return 0;
}