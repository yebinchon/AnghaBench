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
struct xencomm_mini {int dummy; } ;
struct xencomm_desc {int /*<<< orphan*/  nr_addrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  XENCOMM_MINI_ADDRS ; 
 int FUNC1 (struct xencomm_desc*,void*,unsigned long) ; 

__attribute__((used)) static int FUNC2(void *buffer,
	unsigned long bytes, struct xencomm_mini *xc_desc,
	struct xencomm_desc **ret)
{
	int rc = 0;
	struct xencomm_desc *desc;
	FUNC0(((unsigned long)xc_desc) % sizeof(*xc_desc) != 0);

	desc = (void *)xc_desc;

	desc->nr_addrs = XENCOMM_MINI_ADDRS;

	rc = FUNC1(desc, buffer, bytes);
	if (!rc)
		*ret = desc;

	return rc;
}