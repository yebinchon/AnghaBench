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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  ntfs_volume ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (void const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static int FUNC3(ntfs_volume *vol,
		const void *data1, const int data1_len,
		const void *data2, const int data2_len)
{
	int rc;
	u32 d1, d2;

	FUNC2("Entering.");
	// FIXME:  We don't really want to bug here.
	FUNC0(data1_len != data2_len);
	FUNC0(data1_len != 4);
	d1 = FUNC1(data1);
	d2 = FUNC1(data2);
	if (d1 < d2)
		rc = -1;
	else {
		if (d1 == d2)
			rc = 0;
		else
			rc = 1;
	}
	FUNC2("Done, returning %i", rc);
	return rc;
}