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
struct nfs_pgio_header {scalar_t__ io_start; scalar_t__ good_bytes; int error; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  NFS_IOHDR_EOF ; 
 int /*<<< orphan*/  NFS_IOHDR_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct nfs_pgio_header *hdr, int error, loff_t pos)
{
	FUNC2(&hdr->lock);
	if (pos < hdr->io_start + hdr->good_bytes) {
		FUNC1(NFS_IOHDR_ERROR, &hdr->flags);
		FUNC0(NFS_IOHDR_EOF, &hdr->flags);
		hdr->good_bytes = pos - hdr->io_start;
		hdr->error = error;
	}
	FUNC3(&hdr->lock);
}