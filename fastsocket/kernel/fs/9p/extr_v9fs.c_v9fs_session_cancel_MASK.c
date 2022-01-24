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
struct v9fs_session_info {int /*<<< orphan*/  clnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct v9fs_session_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(struct v9fs_session_info *v9ses) {
	FUNC0(P9_DEBUG_ERROR, "cancel session %p\n", v9ses);
	FUNC1(v9ses->clnt);
}