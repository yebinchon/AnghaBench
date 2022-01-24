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
struct task_struct {int dummy; } ;
struct kgdb_state {int /*<<< orphan*/  threadid; int /*<<< orphan*/  linux_regs; int /*<<< orphan*/  kgdb_usethreadid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_struct* kgdb_contthread ; 
 int /*<<< orphan*/  FUNC2 (char**,int /*<<< orphan*/ *) ; 
 struct task_struct* kgdb_usethread ; 
 int* remcom_in_buffer ; 
 int /*<<< orphan*/  remcom_out_buffer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct kgdb_state *ks)
{
	struct task_struct *thread;
	char *ptr;

	switch (remcom_in_buffer[1]) {
	case 'g':
		ptr = &remcom_in_buffer[2];
		FUNC2(&ptr, &ks->threadid);
		thread = FUNC1(ks->linux_regs, ks->threadid);
		if (!thread && ks->threadid > 0) {
			FUNC0(remcom_out_buffer, -EINVAL);
			break;
		}
		kgdb_usethread = thread;
		ks->kgdb_usethreadid = ks->threadid;
		FUNC3(remcom_out_buffer, "OK");
		break;
	case 'c':
		ptr = &remcom_in_buffer[2];
		FUNC2(&ptr, &ks->threadid);
		if (!ks->threadid) {
			kgdb_contthread = NULL;
		} else {
			thread = FUNC1(ks->linux_regs, ks->threadid);
			if (!thread && ks->threadid > 0) {
				FUNC0(remcom_out_buffer, -EINVAL);
				break;
			}
			kgdb_contthread = thread;
		}
		FUNC3(remcom_out_buffer, "OK");
		break;
	}
}