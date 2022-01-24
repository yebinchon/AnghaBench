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
struct TYPE_2__ {int /*<<< orphan*/  sb_lkid; } ;
union ocfs2_dlm_lksb {TYPE_1__ lksb_fsdlm; } ;
typedef  int /*<<< orphan*/  u32 ;
struct ocfs2_cluster_connection {int /*<<< orphan*/  cc_lockspace; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 

__attribute__((used)) static int FUNC1(struct ocfs2_cluster_connection *conn,
			   union ocfs2_dlm_lksb *lksb,
			   u32 flags,
			   void *astarg)
{
	int ret;

	ret = FUNC0(conn->cc_lockspace, lksb->lksb_fsdlm.sb_lkid,
			 flags, &lksb->lksb_fsdlm, astarg);
	return ret;
}