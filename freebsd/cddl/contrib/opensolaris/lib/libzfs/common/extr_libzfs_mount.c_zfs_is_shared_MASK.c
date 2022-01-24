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
typedef  int zfs_share_type_t ;
typedef  scalar_t__ zfs_share_proto_t ;
typedef  int /*<<< orphan*/  zfs_handle_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ PROTO_END ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__* share_all_proto ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

boolean_t
FUNC2(zfs_handle_t *zhp)
{
	zfs_share_type_t rc = 0;
	zfs_share_proto_t *curr_proto;

	if (FUNC0(zhp))
		return (B_FALSE);

	for (curr_proto = share_all_proto; *curr_proto != PROTO_END;
	    curr_proto++)
		rc |= FUNC1(zhp, NULL, *curr_proto);

	return (rc ? B_TRUE : B_FALSE);
}