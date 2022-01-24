#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xfs_sb_t ;
typedef  size_t xfs_sb_field_t ;
typedef  int /*<<< orphan*/  xfs_dsb_t ;
typedef  scalar_t__ xfs_caddr_t ;
typedef  int /*<<< orphan*/  __uint64_t ;
typedef  int /*<<< orphan*/  __u64 ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;
typedef  int __int64_t ;
typedef  int /*<<< orphan*/  __be64 ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;
struct TYPE_2__ {int offset; int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* xfs_sb_info ; 

void
FUNC6(
	xfs_dsb_t	*to,
	xfs_sb_t	*from,
	__int64_t	fields)
{
	xfs_caddr_t	to_ptr = (xfs_caddr_t)to;
	xfs_caddr_t	from_ptr = (xfs_caddr_t)from;
	xfs_sb_field_t	f;
	int		first;
	int		size;

	FUNC0(fields);
	if (!fields)
		return;

	while (fields) {
		f = (xfs_sb_field_t)FUNC5((__uint64_t)fields);
		first = xfs_sb_info[f].offset;
		size = xfs_sb_info[f + 1].offset - first;

		FUNC0(xfs_sb_info[f].type == 0 || xfs_sb_info[f].type == 1);

		if (size == 1 || xfs_sb_info[f].type == 1) {
			FUNC4(to_ptr + first, from_ptr + first, size);
		} else {
			switch (size) {
			case 2:
				*(__be16 *)(to_ptr + first) =
					FUNC1(*(__u16 *)(from_ptr + first));
				break;
			case 4:
				*(__be32 *)(to_ptr + first) =
					FUNC2(*(__u32 *)(from_ptr + first));
				break;
			case 8:
				*(__be64 *)(to_ptr + first) =
					FUNC3(*(__u64 *)(from_ptr + first));
				break;
			default:
				FUNC0(0);
			}
		}

		fields &= ~(1LL << f);
	}
}