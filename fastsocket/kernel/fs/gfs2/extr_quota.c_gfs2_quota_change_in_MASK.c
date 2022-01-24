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
struct gfs2_quota_change_host {void* qc_id; void* qc_flags; int /*<<< orphan*/  qc_change; } ;
struct gfs2_quota_change {int /*<<< orphan*/  qc_id; int /*<<< orphan*/  qc_flags; int /*<<< orphan*/  qc_change; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gfs2_quota_change_host *qc, const void *buf)
{
	const struct gfs2_quota_change *str = buf;

	qc->qc_change = FUNC1(str->qc_change);
	qc->qc_flags = FUNC0(str->qc_flags);
	qc->qc_id = FUNC0(str->qc_id);
}