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
struct pnfs_layout_segment {int dummy; } ;
struct nfs_page {int dummy; } ;
struct nfs_commit_info {int dummy; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 struct list_head* FUNC0 (struct nfs_page*,struct pnfs_layout_segment*,struct nfs_commit_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs_page*,struct list_head*,struct nfs_commit_info*) ; 

__attribute__((used)) static void
FUNC2(struct nfs_page *req,
			       struct pnfs_layout_segment *lseg,
			       struct nfs_commit_info *cinfo)
{
	struct list_head *list;

	list = FUNC0(req, lseg, cinfo);
	FUNC1(req, list, cinfo);
}