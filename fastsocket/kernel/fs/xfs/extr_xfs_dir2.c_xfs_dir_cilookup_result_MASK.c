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
struct xfs_da_args {scalar_t__ cmpresult; int op_flags; int valuelen; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int EEXIST ; 
 int ENOENT ; 
 int ENOMEM ; 
 int KM_MAYFAIL ; 
 int KM_NOFS ; 
 scalar_t__ XFS_CMP_CASE ; 
 scalar_t__ XFS_CMP_DIFFERENT ; 
 int XFS_DA_OP_CILOOKUP ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

int
FUNC2(
	struct xfs_da_args *args,
	const unsigned char *name,
	int		len)
{
	if (args->cmpresult == XFS_CMP_DIFFERENT)
		return ENOENT;
	if (args->cmpresult != XFS_CMP_CASE ||
					!(args->op_flags & XFS_DA_OP_CILOOKUP))
		return EEXIST;

	args->value = FUNC0(len, KM_NOFS | KM_MAYFAIL);
	if (!args->value)
		return ENOMEM;

	FUNC1(args->value, name, len);
	args->valuelen = len;
	return EEXIST;
}