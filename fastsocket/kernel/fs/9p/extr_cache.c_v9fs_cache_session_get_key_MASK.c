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
typedef  scalar_t__ uint16_t ;
struct v9fs_session_info {int /*<<< orphan*/  cachetag; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FSC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,struct v9fs_session_info*,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint16_t FUNC3(const void *cookie_netfs_data,
					   void *buffer, uint16_t bufmax)
{
	struct v9fs_session_info *v9ses;
	uint16_t klen = 0;

	v9ses = (struct v9fs_session_info *)cookie_netfs_data;
	FUNC0(P9_DEBUG_FSC, "session %p buf %p size %u", v9ses,
		   buffer, bufmax);

	if (v9ses->cachetag)
		klen = FUNC2(v9ses->cachetag);

	if (klen > bufmax)
		return 0;

	FUNC1(buffer, v9ses->cachetag, klen);
	FUNC0(P9_DEBUG_FSC, "cache session tag %s", v9ses->cachetag);
	return klen;
}