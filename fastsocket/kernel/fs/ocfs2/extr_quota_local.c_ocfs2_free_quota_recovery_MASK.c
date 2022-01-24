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
struct ocfs2_quota_recovery {int /*<<< orphan*/ * r_list; } ;

/* Variables and functions */
 int MAXQUOTAS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_quota_recovery*) ; 

void FUNC2(struct ocfs2_quota_recovery *rec)
{
	int type;

	for (type = 0; type < MAXQUOTAS; type++)
		FUNC0(&(rec->r_list[type]));
	FUNC1(rec);
}