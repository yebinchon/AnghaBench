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
typedef  int u8 ;
struct vblk_part {int partnum; void* disk_id; void* parent_id; void* size; void* volume_offset; void* start; } ;
struct TYPE_2__ {struct vblk_part part; } ;
struct vblk {int const flags; TYPE_1__ vblk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const VBLK_FLAG_PART_INDEX ; 
 scalar_t__ VBLK_SIZE_PRT3 ; 
 int FUNC1 (int const*) ; 
 void* FUNC2 (int const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,...) ; 
 void* FUNC4 (int const*) ; 
 int FUNC5 (int const*,int,int,int) ; 

__attribute__((used)) static bool FUNC6(const u8 *buffer, int buflen, struct vblk *vb)
{
	int r_objid, r_name, r_size, r_parent, r_diskid, r_index, len;
	struct vblk_part *part;

	FUNC0(!buffer || !vb);
	r_objid = FUNC5(buffer, buflen, 0x18, 0);
	if (r_objid < 0) {
		FUNC3("r_objid %d < 0", r_objid);
		return false;
	}
	r_name = FUNC5(buffer, buflen, 0x18, r_objid);
	if (r_name < 0) {
		FUNC3("r_name %d < 0", r_name);
		return false;
	}
	r_size = FUNC5(buffer, buflen, 0x34, r_name);
	if (r_size < 0) {
		FUNC3("r_size %d < 0", r_size);
		return false;
	}
	r_parent = FUNC5(buffer, buflen, 0x34, r_size);
	if (r_parent < 0) {
		FUNC3("r_parent %d < 0", r_parent);
		return false;
	}
	r_diskid = FUNC5(buffer, buflen, 0x34, r_parent);
	if (r_diskid < 0) {
		FUNC3("r_diskid %d < 0", r_diskid);
		return false;
	}
	if (buffer[0x12] & VBLK_FLAG_PART_INDEX) {
		r_index = FUNC5(buffer, buflen, 0x34, r_diskid);
		if (r_index < 0) {
			FUNC3("r_index %d < 0", r_index);
			return false;
		}
		len = r_index;
	} else {
		r_index = 0;
		len = r_diskid;
	}
	if (len < 0) {
		FUNC3("len %d < 0", len);
		return false;
	}
	len += VBLK_SIZE_PRT3;
	if (len > FUNC1(buffer + 0x14)) {
		FUNC3("len %d > BE32(buffer + 0x14) %d", len,
				FUNC1(buffer + 0x14));
		return false;
	}
	part = &vb->vblk.part;
	part->start = FUNC2(buffer + 0x24 + r_name);
	part->volume_offset = FUNC2(buffer + 0x2C + r_name);
	part->size = FUNC4(buffer + 0x34 + r_name);
	part->parent_id = FUNC4(buffer + 0x34 + r_size);
	part->disk_id = FUNC4(buffer + 0x34 + r_parent);
	if (vb->flags & VBLK_FLAG_PART_INDEX)
		part->partnum = buffer[0x35 + r_diskid];
	else
		part->partnum = 0;
	return true;
}