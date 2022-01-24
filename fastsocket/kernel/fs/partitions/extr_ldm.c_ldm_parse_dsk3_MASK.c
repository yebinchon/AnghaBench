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
typedef  int /*<<< orphan*/  u8 ;
struct vblk_disk {int /*<<< orphan*/  disk_id; int /*<<< orphan*/  alt_name; } ;
struct TYPE_2__ {struct vblk_disk disk; } ;
struct vblk {TYPE_1__ vblk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ VBLK_SIZE_DSK3 ; 
 int FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/  const*,int,int,int) ; 

__attribute__((used)) static bool FUNC5 (const u8 *buffer, int buflen, struct vblk *vb)
{
	int r_objid, r_name, r_diskid, r_altname, len;
	struct vblk_disk *disk;

	FUNC0 (!buffer || !vb);

	r_objid   = FUNC4 (buffer, buflen, 0x18, 0);
	r_name    = FUNC4 (buffer, buflen, 0x18, r_objid);
	r_diskid  = FUNC4 (buffer, buflen, 0x18, r_name);
	r_altname = FUNC4 (buffer, buflen, 0x18, r_diskid);
	len = r_altname;
	if (len < 0)
		return false;

	len += VBLK_SIZE_DSK3;
	if (len != FUNC1(buffer + 0x14))
		return false;

	disk = &vb->vblk.disk;
	FUNC2 (buffer + 0x18 + r_diskid, disk->alt_name,
		sizeof (disk->alt_name));
	if (!FUNC3 (buffer + 0x19 + r_name, disk->disk_id))
		return false;

	return true;
}