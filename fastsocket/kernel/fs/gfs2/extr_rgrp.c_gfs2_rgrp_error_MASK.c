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
struct gfs2_sbd {int dummy; } ;
struct gfs2_rgrpd {int /*<<< orphan*/  rd_flags; int /*<<< orphan*/  rd_gl; scalar_t__ rd_addr; struct gfs2_sbd* rd_sbd; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFS2_RDF_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct gfs2_sbd*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gfs2_rgrpd *rgd)
{
	struct gfs2_sbd *sdp = rgd->rd_sbd;
	FUNC0(sdp, "rgrp %llu has an error, marking it readonly until umount\n",
		(unsigned long long)rgd->rd_addr);
	FUNC0(sdp, "umount on all nodes and run fsck.gfs2 to fix the error\n");
	FUNC1(NULL, rgd->rd_gl);
	rgd->rd_flags |= GFS2_RDF_ERROR;
}