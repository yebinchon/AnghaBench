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
struct TYPE_2__ {int /*<<< orphan*/  fE; int /*<<< orphan*/  inheritable; int /*<<< orphan*/  permitted; } ;
struct audit_names {int /*<<< orphan*/  fcap_ver; TYPE_1__ fcap; } ;
struct audit_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  kernel_cap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct audit_buffer *ab, struct audit_names *name)
{
	kernel_cap_t *perm = &name->fcap.permitted;
	kernel_cap_t *inh = &name->fcap.inheritable;
	int log = 0;

	if (!FUNC2(*perm)) {
		FUNC0(ab, "cap_fp", perm);
		log = 1;
	}
	if (!FUNC2(*inh)) {
		FUNC0(ab, "cap_fi", inh);
		log = 1;
	}

	if (log)
		FUNC1(ab, " cap_fe=%d cap_fver=%x", name->fcap.fE, name->fcap_ver);
}