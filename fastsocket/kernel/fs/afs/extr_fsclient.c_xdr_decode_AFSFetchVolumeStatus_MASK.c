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
struct afs_volume_status {void* part_max_blocks; void* part_blocks_avail; void* blocks_in_use; void* max_quota; void* min_quota; void* type; void* needs_salvage; void* blessed; void* in_service; void* online; void* parent_id; void* vid; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(const __be32 **_bp,
					    struct afs_volume_status *vs)
{
	const __be32 *bp = *_bp;

	vs->vid			= FUNC0(*bp++);
	vs->parent_id		= FUNC0(*bp++);
	vs->online		= FUNC0(*bp++);
	vs->in_service		= FUNC0(*bp++);
	vs->blessed		= FUNC0(*bp++);
	vs->needs_salvage	= FUNC0(*bp++);
	vs->type		= FUNC0(*bp++);
	vs->min_quota		= FUNC0(*bp++);
	vs->max_quota		= FUNC0(*bp++);
	vs->blocks_in_use	= FUNC0(*bp++);
	vs->part_blocks_avail	= FUNC0(*bp++);
	vs->part_max_blocks	= FUNC0(*bp++);
	*_bp = bp;
}