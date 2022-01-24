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
struct TYPE_2__ {int /*<<< orphan*/  max_xmit; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int SMB_HEADER_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct smb_sb_info*,int) ; 

int
FUNC2(struct smb_sb_info *server)
{
	/* writeX has 14 parameters, write has 5 */
	int overhead = SMB_HEADER_LEN + 14 * sizeof(__u16) + 2 + 1 + 2;
	int size = FUNC1(server, overhead);

	FUNC0("xmit=%d, size=%d\n", server->opt.max_xmit, size);

	return size;
}