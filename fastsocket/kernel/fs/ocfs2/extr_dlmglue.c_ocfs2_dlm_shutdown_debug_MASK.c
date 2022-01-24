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
struct ocfs2_super {struct ocfs2_dlm_debug* osb_dlm_debug; } ;
struct ocfs2_dlm_debug {int /*<<< orphan*/  d_locking_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_dlm_debug*) ; 

__attribute__((used)) static void FUNC2(struct ocfs2_super *osb)
{
	struct ocfs2_dlm_debug *dlm_debug = osb->osb_dlm_debug;

	if (dlm_debug) {
		FUNC0(dlm_debug->d_locking_state);
		FUNC1(dlm_debug);
	}
}