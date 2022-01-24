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
typedef  int /*<<< orphan*/  u32 ;
struct task_security_struct {int /*<<< orphan*/  sid; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET__RELABELTO ; 
 int /*<<< orphan*/  SECCLASS_PACKET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct task_security_struct* FUNC1 () ; 
 scalar_t__ selinux_enabled ; 

int FUNC2(u32 sid)
{
	if (selinux_enabled) {
		const struct task_security_struct *__tsec;
		u32 tsid;

		__tsec = FUNC1();
		tsid = __tsec->sid;

		return FUNC0(tsid, sid, SECCLASS_PACKET,
				    PACKET__RELABELTO, NULL);
	}
	return 0;
}