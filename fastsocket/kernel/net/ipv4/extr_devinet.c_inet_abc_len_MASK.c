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
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline__ int FUNC5(__be32 addr)
{
	int rc = -1;	/* Something else, probably a multicast. */

	if (FUNC3(addr))
		rc = 0;
	else {
		__u32 haddr = FUNC4(addr);

		if (FUNC0(haddr))
			rc = 8;
		else if (FUNC1(haddr))
			rc = 16;
		else if (FUNC2(haddr))
			rc = 24;
	}

	return rc;
}