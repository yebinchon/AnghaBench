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
struct vblk_volu {int partition_type; int /*<<< orphan*/  drive_hint; int /*<<< orphan*/  guid; int /*<<< orphan*/  size; int /*<<< orphan*/  volume_state; int /*<<< orphan*/  volume_type; } ;
struct TYPE_2__ {struct vblk_volu volu; } ;
struct vblk {TYPE_1__ vblk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int const VBLK_FLAG_VOLU_DRIVE ; 
 int const VBLK_FLAG_VOLU_ID1 ; 
 int const VBLK_FLAG_VOLU_ID2 ; 
 int const VBLK_FLAG_VOLU_SIZE ; 
 scalar_t__ VBLK_SIZE_VOL5 ; 
 int FUNC1 (int const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (int const*) ; 
 int /*<<< orphan*/  FUNC4 (int const*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int const*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,int) ; 

__attribute__((used)) static bool FUNC7(const u8 *buffer, int buflen, struct vblk *vb)
{
	int r_objid, r_name, r_vtype, r_disable_drive_letter, r_child, r_size;
	int r_id1, r_id2, r_size2, r_drive, len;
	struct vblk_volu *volu;

	FUNC0(!buffer || !vb);
	r_objid = FUNC5(buffer, buflen, 0x18, 0);
	if (r_objid < 0) {
		FUNC2("r_objid %d < 0", r_objid);
		return false;
	}
	r_name = FUNC5(buffer, buflen, 0x18, r_objid);
	if (r_name < 0) {
		FUNC2("r_name %d < 0", r_name);
		return false;
	}
	r_vtype = FUNC5(buffer, buflen, 0x18, r_name);
	if (r_vtype < 0) {
		FUNC2("r_vtype %d < 0", r_vtype);
		return false;
	}
	r_disable_drive_letter = FUNC5(buffer, buflen, 0x18, r_vtype);
	if (r_disable_drive_letter < 0) {
		FUNC2("r_disable_drive_letter %d < 0",
				r_disable_drive_letter);
		return false;
	}
	r_child = FUNC5(buffer, buflen, 0x2D, r_disable_drive_letter);
	if (r_child < 0) {
		FUNC2("r_child %d < 0", r_child);
		return false;
	}
	r_size = FUNC5(buffer, buflen, 0x3D, r_child);
	if (r_size < 0) {
		FUNC2("r_size %d < 0", r_size);
		return false;
	}
	if (buffer[0x12] & VBLK_FLAG_VOLU_ID1) {
		r_id1 = FUNC5(buffer, buflen, 0x52, r_size);
		if (r_id1 < 0) {
			FUNC2("r_id1 %d < 0", r_id1);
			return false;
		}
	} else
		r_id1 = r_size;
	if (buffer[0x12] & VBLK_FLAG_VOLU_ID2) {
		r_id2 = FUNC5(buffer, buflen, 0x52, r_id1);
		if (r_id2 < 0) {
			FUNC2("r_id2 %d < 0", r_id2);
			return false;
		}
	} else
		r_id2 = r_id1;
	if (buffer[0x12] & VBLK_FLAG_VOLU_SIZE) {
		r_size2 = FUNC5(buffer, buflen, 0x52, r_id2);
		if (r_size2 < 0) {
			FUNC2("r_size2 %d < 0", r_size2);
			return false;
		}
	} else
		r_size2 = r_id2;
	if (buffer[0x12] & VBLK_FLAG_VOLU_DRIVE) {
		r_drive = FUNC5(buffer, buflen, 0x52, r_size2);
		if (r_drive < 0) {
			FUNC2("r_drive %d < 0", r_drive);
			return false;
		}
	} else
		r_drive = r_size2;
	len = r_drive;
	if (len < 0) {
		FUNC2("len %d < 0", len);
		return false;
	}
	len += VBLK_SIZE_VOL5;
	if (len > FUNC1(buffer + 0x14)) {
		FUNC2("len %d > BE32(buffer + 0x14) %d", len,
				FUNC1(buffer + 0x14));
		return false;
	}
	volu = &vb->vblk.volu;
	FUNC4(buffer + 0x18 + r_name, volu->volume_type,
			sizeof(volu->volume_type));
	FUNC6(volu->volume_state, buffer + 0x18 + r_disable_drive_letter,
			sizeof(volu->volume_state));
	volu->size = FUNC3(buffer + 0x3D + r_child);
	volu->partition_type = buffer[0x41 + r_size];
	FUNC6(volu->guid, buffer + 0x42 + r_size, sizeof(volu->guid));
	if (buffer[0x12] & VBLK_FLAG_VOLU_DRIVE) {
		FUNC4(buffer + 0x52 + r_size, volu->drive_hint,
				sizeof(volu->drive_hint));
	}
	return true;
}